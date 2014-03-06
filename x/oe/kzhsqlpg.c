/***********************************************************************

   KZHSQLPG.C - Database handler for Gupta SQL Base.

   Programming Notes:

      o  All function return codes use the following convention:
         - rc = 0 means that the function worked as intended.
         - rc > 0 means that the function worked but with warnings.
         - rc < 0 means that an error occured.

****************************** DEFINES ********************************/
#define KZHSQLPG_Version 100

#define SQL_RC( a, b, c, d, e )  Postgres_RC( a, b, c, d, e, lpConnection )

#include "kzoephdr.h"
#include "libpq-fe.h"
#include "kzhsqlgp.h"   // Generator prototypes


#define TABLE_BUFFER_LTH           32000
#define COMMAND_BUFFER_LTH         10000
#define MAX_OPEN_DATABASES         10

/*************************  TYPEDEF'S  ********************************/

typedef struct ConnectionArea ConnectionRecord;
typedef ConnectionRecord zFAR *LPCONNECTION;
struct ConnectionArea
{
   zVIEW          lpAppView;
   zVIEW          vDbhWork;
   PGconn         *pConn;
   LPQUALENTITY   lpFirstQualEntity;
   zPCHAR         szSqlCmd;
   zLONG          hCmdMem;
   zPCHAR         szGlobalTableBuffer;
   zLONG          hTblMem;
   zSHORT         nTraceLevel;
};

/*************************  FUNCTION PROTOTYPES ***********************/

zSHORT InitDatabase( zVIEW lpView );
zSHORT CloseDatabase( int Indicators );
zSHORT BeginTransaction( int          Indicators,
                         LPVIEWOD     lpViewOD,
                         zVIEW        lpView,
                         zVIEW        lpQualView,
                         zPVOID       lpWorkPtr );
zSHORT CommitTransaction( int Indicators, LPCONNECTION lpConnection );
zSHORT RollbackTransaction( int Indicators, LPCONNECTION lpConnection );
zSHORT Load( LPVIEWENTITY lpViewEntity,
             zVIEW        lpView,
             LPVIEWOD     lpViewOD,
             zVIEW        lpQualView,
             LPCONNECTION lpConnection,
             int          Indicators );
zSHORT Insert( LPVIEWENTITY lpViewEntity,
               zVIEW        lpView,
               LPVIEWOD     lpViewOD,
               zSHORT       bAutoSeqOnly,
               LPCONNECTION lpConnection );
zSHORT InsertRel( LPVIEWENTITY lpViewEntity,
                  zVIEW        lpView,
                  LPVIEWOD     lpViewOD,
                  LPCONNECTION lpConnection );
zSHORT Delete( LPVIEWENTITY lpViewEntity,
               zVIEW        lpView,
               LPVIEWOD     lpViewOD,
               LPCONNECTION lpConnection );
zSHORT DeleteRel( LPVIEWENTITY lpViewEntity,
                  zVIEW        lpView,
                  LPVIEWOD     lpViewOD,
                  LPCONNECTION lpConnection );
zSHORT Update( LPVIEWENTITY lpViewEntity,
               zVIEW        lpView,
               LPVIEWOD     lpViewOD,
               zSHORT       bAutoSeqOnly,
               LPCONNECTION lpConnection );
void DBH_Error( zVIEW lpView, zPCHAR szErrorMsg, int nRC, zPCHAR pchInfo );
void DisplayCommand( zPCHAR       szRoutine,
                     PGresult     *pRetCode,
                     LPCONNECTION lpConnection );
zSHORT GetWorkObjectView( zPVIEW       vDbhWork,
                          zVIEW        lpView,
                          LPVIEWOD     lpViewOD,
                          LPCONNECTION zFAR *lpConnection );
void Postgres_RC( zPCHAR       szRoutine,
                  PGresult     *pRetCode,
                  zPCHAR       szInfo1,
                  zPCHAR       szInfo2,
                  zSHORT       nTrcLvl,
                  LPCONNECTION lpConnection );
zSHORT WriteLongChar( zVIEW        lpView,
                      LPVIEWENTITY lpViewEntity,
                      LPCONNECTION lpConnection,
                      LPBOUNDATTR  lpBoundAttr );
zBOOL fnExecCommand( LPCONNECTION lpConnection, zPCHAR pchCmd );

/**********************************************************************

  KZHSQLPG_DBH_MsgProc

  The entry point for the db-handler.  All calls go through here.

***********************************************************************/
zSHORT OPERATION
kzhsqlpg_DBH_MsgProc( LPTASK       hTask,
                      zUSHORT      Message,      // Message indicating function, etc.
                      int          Indicators,   // Indicators for function.
                      LPVIEWOD     lpViewOD,     // Target/Source object defintion.
                      LPVIEWENTITY lpViewEntity, // Target/Source entity.
                      zVIEW        lpView,       // Target/Source view.
                      zVIEW        lpQualView,   // Qualification view.
                      zPVOID       lpWorkPtr ) // Work pointer.
{
   LPCONNECTION lpConnection;
   zSHORT       nRC;

   if ( *(zPVOID zFAR *) lpWorkPtr )
   {
      lpConnection = * (LPCONNECTION zFAR *) lpWorkPtr;
      if ( lpView )
         lpConnection->lpAppView = lpView;
      lpConnection->nTraceLevel =
                   GetTaskDBHandlerTraceLevel( lpConnection->lpAppView );

   } // if ( *(zPVOID zFAR *) lpWorkPtr )...
   else
      lpConnection = 0;

   // Execute a function according to the message passed.
   if ( Message & DBH_Entity )
   {

#if Timer
      lEntityMessageCount++;
#endif

      if ( * (zPVOID zFAR *) lpWorkPtr == 0 )
      {
         DBH_Error( lpView, "Internal error--lpWorkPtr is null!", 0, 0 );
         return( zCALL_ERROR )
      }

      if ( Message & DBH_Load )
         nRC = Load( lpViewEntity, lpView, lpViewOD, lpQualView, lpConnection,
                     Indicators );
      else
      if ( Message & DBH_Insert )
         nRC = Insert( lpViewEntity, lpView, lpViewOD, FALSE, lpConnection );
      else
      if ( Message & DBH_InsertRel )
         nRC = InsertRel( lpViewEntity, lpView, lpViewOD, lpConnection );
      else
      if ( Message & DBH_Delete )
         nRC = Delete( lpViewEntity, lpView, lpViewOD, lpConnection );
      else
      if ( Message & DBH_DeleteRel )
         nRC = DeleteRel( lpViewEntity, lpView, lpViewOD, lpConnection );
      else
      if ( Message & DBH_Update )
         nRC = Update( lpViewEntity, lpView, lpViewOD, FALSE, lpConnection );
      else
      if ( Message & DBH_UpdateSeq )
         nRC = Update( lpViewEntity, lpView, lpViewOD, TRUE, lpConnection );

      if ( nRC == zCALL_ERROR )
      {
         TraceLineS( "", "" );
         if ( Message & DBH_Load )
            TraceLineS( "Error performing Load", "" );
         else
         if ( Message & DBH_Insert )
            TraceLineS( "Error performing Insert", "" );
         else
         if ( Message & DBH_InsertRel )
            TraceLineS( "Error performing InsertRel", "" );
         else
         if ( Message & DBH_Delete )
            TraceLineS( "Error performing Delete", "" );
         else
         if ( Message & DBH_DeleteRel )
            TraceLineS( "Error performing DeleteRel", "" );
         else
         if ( Message & DBH_Update )
            TraceLineS( "Error performing Update", "" );

         if ( lpViewEntity->lpParent )
         {
            TraceLineS( "PARENT:", "" );
            DisplayEntityInstance( lpView, lpViewEntity->lpParent->lpName );
            TraceLineS( "", "" );
            TraceLineS( "CHILD:", "" );
         }

         DisplayEntityInstance( lpView, lpViewEntity->lpName );

         if ( lpQualView )
         {
            TraceLineS( "Qualification View:", "" );
            DisplayObjectInstance( lpQualView, 0, 0 );
         }
      }
   }
   else
   if ( Message & DBH_Object )
   {
      if ( Message & DBH_TranBegin )
         nRC = BeginTransaction( Indicators, lpViewOD, lpView, lpQualView,
                                 lpWorkPtr );
      else
      if ( Message & DBH_Commit )
         nRC = CommitTransaction( Indicators, lpConnection );
      else
      if ( Message & DBH_Rollback )
         nRC = RollbackTransaction( Indicators, lpConnection );
   }
   else
   if ( Message & DBH_Init )
      nRC = InitDatabase( lpView );
   else
   if ( Message & ( DBH_Term | DBH_TaskCloseAll ) )
      nRC = CloseDatabase( Indicators );

   return( nRC );

} // KZHSQLPG_DBH_MsgProc

//=========================================================================
//       ENTITY FUNCTIONS
//=========================================================================

/**********************************************************************

      InitDatabase

***********************************************************************/
zSHORT
InitDatabase( zVIEW lpView )
{
   zSHORT   nRC;
   char     szStr[ 2 ];
   zVIEW    vDbhWork;

   nRC = GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME,
                        lpView, zLEVEL_SYSTEM );
   if ( nRC < 0 )
   {
      DBH_Error( lpView, "Can't find DB-Handler work view.", 0, 0 );
      return( zCALL_ERROR )
   }

   szStr[ 0 ] = zSQL_POSTGRES;
   szStr[ 1 ] = 0;

   nRC = SetCursorFirstEntityByString( vDbhWork, "Type", "Type", szStr, "" );
   if ( nRC != zCURSOR_SET )
   {
      CreateEntity( vDbhWork, "Type", zPOS_AFTER );
      SetAttributeFromString( vDbhWork, "Type", "Type", szStr );
   }

   return( 0 )
}  /* InitDatabase */

/**********************************************************************

      CloseDatabase

      Frees any memory allocate by the db-handler and closes all databases.

***********************************************************************/
zSHORT
CloseDatabase( zVIEW lpView, int Indicators )
{
   LPCONNECTION lpConnection;
   zVIEW        vDbhWork;
   zLONG        lTaskID;
   char         szStr[ 2 ];
   zSHORT       nRC;

   nRC = GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME,
                        lpView, zLEVEL_SYSTEM );
   if ( nRC < 0 )
   {
      TraceLineS( "Cannot find work object", "" );
      return( zCALL_ERROR )
   }

   szStr[ 0 ] = zSQL_POSTGRES;
   szStr[ 1 ] = 0;
   nRC = SetCursorFirstEntityByString( vDbhWork, "Type", "Type", szStr, "" );
   if ( nRC != zCURSOR_SET )
   {
      DBH_Error( vDbhWork, "Internal error -- cannot find Postgres type in "
                 "db-handler work object.", 0, 0 );
      DropView( vDbhWork );
      return( zCALL_ERROR )
   }

   lTaskID = SysGetTaskFromView( lpView );
   nRC = SetCursorFirstEntityByInteger( vDbhWork, "Connection",
                                        "TaskID", lTaskID, "" );
   while ( nRC == zCURSOR_SET )
   {
      GetAddrForAttribute( (zCOREMEM) &lpConnection, vDbhWork,
                           "Connection", "ConnectionBlob" );

      if ( lpConnection )
      {
         if ( lpConnection->hCmdMem )
            SysFreeMemory( lpConnection->hCmdMem );

         if ( lpConnection->hTblMem )
         {
         // zLONG lBytes = 0;
         //
         // lBytes /= lBytes;

            SysFreeMemory( lpConnection->hTblMem );
         }

         if ( lpConnection->lpFirstQualEntity )
            SqlFreeQualEntity( &lpConnection->lpFirstQualEntity );

      } // if ( lpConnection )...

      SetAttributeFromBlob( vDbhWork, "Connection", "ConnectionBlob", 0, 0 );
      DeleteEntity( vDbhWork, "Connection", zREPOS_AFTER );
      nRC = SetCursorFirstEntityByInteger( vDbhWork, "Connection",
                                           "TaskID", lTaskID, "" );
   }

   return( 0 )

}  /* CloseDatabase */

/**********************************************************************

      BeginTransaction

      Checks to see if the database has already been opened and opens it
      if needed.

***********************************************************************/
zSHORT BeginTransaction ( int          Indicators,
                          LPVIEWOD     lpViewOD,
                          zVIEW        lpView,
                          zVIEW        lpQualView,
                          zPVOID       lpWorkPtr )
{
   LPCONNECTION lpConnection;
   LPVIEWENTITY lpViewEntity;
   zVIEW  vDbhWork;
   zSHORT nTraceLevel;
   zSHORT nRC;

   nTraceLevel = GetTaskDBHandlerTraceLevel( lpView );
   if ( nTraceLevel > 0 )
   {
      TraceLineS( "####################################################", "" );
      TraceLineS( "##################  BEGIN TRANSACTION ##############", "" );
      TraceLineS( "####################################################", "" );
      TraceLineI( "KZHSQLPG Version 1.", (zLONG) KZHSQLPG_Version );
      if ( Indicators == ( Indicators & DBH_StoreOI ) )
         TraceLineS( "Storing Object Def ", lpViewOD->lpName );
      else
         TraceLineS( "Activating Object Def ", lpViewOD->lpName );
   }

   nRC = GetWorkObjectView( &vDbhWork, lpView, lpViewOD, &lpConnection );
   if ( nRC == zCALL_ERROR )
   {
      DBH_Error( lpView, "Internal Error #1 -- Error locating work object.",
                 0, 0 );
      return( zCALL_ERROR )
   }

   * (zPVOID zFAR *) lpWorkPtr = (zPVOID) lpConnection;

   // Copy the contents of lpQualView to memory.
   if ( lpQualView )
   {
      nRC = SqlRetrieveQualObject( zSQL_POSTGRES, lpView, lpQualView, lpViewOD,
                                   &lpConnection->lpFirstQualEntity );
      if ( nRC < 0 )
         return( zCALL_ERROR )
   }

   // Try getting a connection to the database.
   lpConnection->pConn = PQsetdb( 0, 0, 0, 0, lpViewOD->lpDftDBName );
   if ( PQstatus( lpConnection->pConn ) == CONNECTION_BAD )
   {
      DBH_Error( lpView, "Bad connection to database",
                 CONNECTION_BAD, lpViewOD->lpDftDBName );
      PQfinish( lpConnection->pConn );

      if ( lpConnection->lpFirstQualEntity )
         SqlFreeQualEntity( &lpConnection->lpFirstQualEntity );

      return( zCALL_ERROR )
   }

   if ( !fnExecCommand( lpConnection, "BEGIN" ) )
   {
      PQfinish( lpConnection->pConn );

      if ( lpConnection->lpFirstQualEntity )
         SqlFreeQualEntity( &lpConnection->lpFirstQualEntity );

      TraceLineS( "Aborting transaction...", "" );
      return( zCALL_ERROR )
   }

   return( 0 )

}  /* BeginTransaction */

/**********************************************************************

      CommitTransaction

***********************************************************************/
zSHORT CommitTransaction ( int Indicators, LPCONNECTION lpConnection )
{
   zSHORT     i;
   zSHORT     nRC;

   if ( !lpConnection )
   {
      TraceLineS( "(kzhsqlpg) lpConnection is NULL!!!!!!", "" );
      return( zCALL_ERROR )
   }

   if ( lpConnection->nTraceLevel > 0 )
   {
      TraceLineS( "####################################################", "" );
      TraceLineS( "#################  COMMIT TRANSACTION ##############", "" );
      TraceLineS( "####################################################", "" );
   }

   // Free up qual data.
   if ( lpConnection->lpFirstQualEntity )
      SqlFreeQualEntity( &lpConnection->lpFirstQualEntity );

   fnExecCommand( lpConnection, "END" );
   PQfinish( lpConnection->pConn );

   return( 0 )
}  /* CommitTransaction */

/**********************************************************************

      RollbackTransaction

***********************************************************************/
zSHORT RollbackTransaction ( int Indicators, LPCONNECTION lpConnection )
{
   zSHORT     i;
   zSHORT     nRC;

   if ( !lpConnection )
   {
      TraceLineS( "(kzhsqlpg) lpConnection is NULL!!!!!!", "" );
      return( 0 )
   }

   if ( lpConnection->nTraceLevel > 0 )
   {
      TraceLineS( "####################################################", "" );
      TraceLineS( "################ ROLLBACK TRANSACTION ##############", "" );
      TraceLineS( "####################################################", "" );
   }

   // Free up qual data.
   if ( lpConnection->lpFirstQualEntity )
      SqlFreeQualEntity( &lpConnection->lpFirstQualEntity );

   fnExecCommand( lpConnection, "ABORT" );
   PQfinish( lpConnection->pConn );

   return( 0 )
}  /* RollbackTransaction */



//=========================================================================
//       ENTITY FUNCTIONS
//=========================================================================



/**********************************************************************

      Load

      Loads entities of type lpViewEntity from the database.

      Returns:    1 - Load worked--multiple roots found but only 1 loaded
                      because Indicators = zSINGLE.
                  0 - Load worked--entity(-ies) loaded.
                 -1 - Load worked but couldn't find anything to load.
        zCALL_ERROR - Call error

***********************************************************************/
zSHORT
Load( LPVIEWENTITY lpViewEntity,
      zVIEW        lpView,
      LPVIEWOD     lpViewOD,
      zVIEW        lpQualView,
      LPCONNECTION lpConnection,
      int          Indicators )
{
   LPDATARECORD lpDataRecord;
   LPDATAFIELD  lpDataField;
   LPRELRECORD  lpRelRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   PGresult     *pRetCode;
   zPCHAR       szTableName;
   zPVOID       lpMem;
   zUSHORT      uLth;
   zLONG        lMemLth;
   zLONG        hMem;
   zBOOL        bKeysOnly;
   zSHORT       nColumnCount;
   zSHORT       nRowCount;
   zSHORT       nNumRows;
   zSHORT       nRC, nRC2;

   nRC = 0;
   bKeysOnly = FALSE;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;
   lpRelRecord  = lpDataRecord->lpFirstRelRecord;
   szTableName  = lpDataRecord->lpRecordName;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "================= Performing load ===================", "" );
      TraceLineS( "  Entity name: ", lpViewEntity->lpName );
      TraceLineS( "  Table name: ", lpDataRecord->lpRecordName );

      if ( lpConnection->nTraceLevel > 2 )
      {
         if ( lpConnection->lpFirstQualEntity )
            TraceLineS( "  Table IS qualified.", "" );
         else
            TraceLineS( "  Table is not qualified.", "" );

         if ( lpViewEntity->lpParent )
            DisplayEntityInstance( lpView, lpViewEntity->lpParent->lpName );
      }
   }

   // AutoLoad:
   // When the parent has the imbedded keys for the child and the
   // only attributes in the child are those imbedded keys.
   // Autoload is defined (for Phil) from the object for performance
   // reasons.
   // As of 5/29/95, AutoLoadFromParent does not appear to be used.
   // The variable itself, bAutoLoadFromParent, is set from the
   // attribute AUTOLOADFROMPARENT in kzoeodaa.c, but the attribute
   // AUTOLOADFROMPARENT is not defined in the xod nor is it set
   // anywhere.  It was probably set by hand in the portable file.
   if ( lpViewEntity->bAutoLoadFromParent )
   {
      if ( lpConnection->nTraceLevel > 0 )
      {
         TraceLineS( "", "" );
         TraceLineS( "Loading ent from parent; SQL might not be needed.", "" );
         TraceLineS( "Entity name = ", lpViewEntity->lpName );
      }

      // Return codes from SqlAutoLoadFromParent are:
      //    0 - Nothing done. Perform normal SQL code.
      //    1 - Entity created using info from parent.
      //    2 - A SQL command was created and needs to be executed.  In this
      //        case only the keys need to be loaded for the entity.
      nRC = SqlAutoLoadFromParent( zSQL_POSTGRES, lpView, lpViewOD,
                                   lpViewEntity,
                                   lpConnection->lpFirstQualEntity,
                                   lpConnection->szSqlCmd );
      if ( nRC < 0 )
         return( zCALL_ERROR )
      else
      if ( nRC == 0 )
      {
         nRC = SqlBuildSelect( zSQL_POSTGRES, lpView, lpViewOD, lpViewEntity,
                               lpConnection->lpFirstQualEntity,
                               lpConnection->szSqlCmd, &lpBoundAttr );
         if ( nRC == zCALL_ERROR )
         {
            SqlFreeBoundAttrList( lpBoundAttr );
            return( zCALL_ERROR )
         }
      }
      else
      if ( nRC == 1 )
         return( 0 ); // the entity was created (from the parent) so just exit.
      else
      if ( nRC == 2 )
      {
         bKeysOnly = TRUE;
         nRC = 0;
      }
   }
   else
   {
      nRC = SqlBuildSelect( zSQL_POSTGRES, lpView, lpViewOD, lpViewEntity,
                            lpConnection->lpFirstQualEntity,
                            lpConnection->szSqlCmd, &lpBoundAttr );
      if ( nRC == zCALL_ERROR )
      {
         SqlFreeBoundAttrList( lpBoundAttr );
         return( zCALL_ERROR )
      }
   }

   // We don't need the bound attribute list for the SELECT statement so just
   // free it.
   SqlFreeBoundAttrList( lpBoundAttr );
// lpBoundAttr = 0;

   // If nRC == 1, then some of the foreign keys are null, which means that
   // there are no children.
   if ( nRC == 1 )
   {
      if ( lpConnection->nTraceLevel > 0 )
      {
         TraceLineS( "Foreign key is null, so following command was not ",
                     "executed." );
         SqlDisplayCommand( lpConnection->szSqlCmd, 0 );
         TraceLineI( "Number of rows selected = ", (zLONG) 0 );
      }

      return( 0 )
   }

   if ( !fnExecCommand( lpConnection, 0 ) )
      return( zCALL_ERROR )

   pRetCode = PQexec( lpConnection->pConn, "FETCH ALL in CmdCursor" );
   SQL_RC( "FETCH", pRetCode, "PQexec", 0, 1 );
   if ( !pRetCode || PQresultStatus( pRetCode ) != PGRES_TUPLES_OK )
   {
      if ( pRetCode )
         PQclear( pRetCode );

      return( zCALL_ERROR )
   }

   nRC = -1;   // Assume that no rows were fetched.

   // Copy each row into an entity.
   nNumRows = PQntuples( pRetCode );
   for ( nRowCount = 0; nRowCount < nNumRows; nRowCount++ )
   {
      // For each row, create an entity instance and copy the attribute
      // values from the table to the entity.
      LoadEntity( lpView, lpViewEntity->lpName, zPOS_AFTER );
      nRC = 0;

      nColumnCount = 0;
      for ( lpDataField = lpDataRecord->lpFirstDataField;
            lpDataField;
            lpDataField = lpDataField->lpNextDataField )
      {
         // If we only want the keys and the attrib/datafield is not a key,
         // continue.
         if ( bKeysOnly && !lpDataField->lpViewAttrib->bKey )
            continue;

         // If attribute is a blob or long string, then value the must be
         // retrieved from a long varchar.
         if ( lpDataField->cFldType == zTYPE_BLOB ||
              lpDataField->nFldLth > zMAX_NONBLOB_FIELD_SIZE )
         {
            // Do nothing right now.
         } // if ( lpDataField->cFldType == zTYPE_BLOB || ... )...
         else
         {
            zPCHAR pszValue;

            pszValue = PQgetvalue( pRetCode, nRowCount, nColumnCount );

            if ( lpConnection->nTraceLevel > 2 )
            {
               zCHAR szMsg[ 300 ];

               sprintf( szMsg, "Value for %s.%s (%d) = ", lpViewEntity->lpName,
                        lpDataField->lpViewAttrib->lpName, nRowCount );
               TraceLineS( szMsg, pszValue );
            }

            StoreStringInRecord( lpView, lpViewEntity,
                                 lpDataField->lpViewAttrib, pszValue );
         }

         nColumnCount++;

      } // for ( lpDataField... )...

      if ( nRC < 0 )
         break;

      // If the current view entity does not have a parent (ie. it is the
      // root) and the zSINGLE has been specified, then stop fetching rows
      // and return 1.
      if ( lpViewEntity->lpParent == 0 && !( Indicators & zMULTIPLE ) &&
           nNumRows > 1 )
      {
         nRC = 1;   // Indicate that multiple roots were found.
         break;
      }

      // If the current row count is a greater than the root limit for the
      // current OD, then set nRC to 1 to break fetch loop.
      if ( nRC == 0 && !lpViewEntity->lpParent && lpViewOD->nMultiRootLimit )
      {
         if ( nRowCount > lpViewOD->nMultiRootLimit  )
            nRC = 1;   // Indicate that more roots were found.
      }
   } // for ( nRowCount... )...

   PQclear( pRetCode );
   fnExecCommand( lpConnection, "CLOSE CmdCursor" );

   if ( lpConnection->nTraceLevel > 0 )
      TraceLineI( "Number of rows retrieved = ", (zLONG) nRowCount );

   return nRC;
}  /* Load */

/**********************************************************************

      Insert

***********************************************************************/
zSHORT
Insert( LPVIEWENTITY lpViewEntity,
        zVIEW        lpView,
        LPVIEWOD     lpViewOD,
        zSHORT       bAutoSeqOnly,
        LPCONNECTION lpConnection )
{
   LPDATARECORD lpDataRecord;
   LPRELRECORD  lpRelRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   zPCHAR szRecordName;
   zLONG  nRecordId;
   zSHORT nRC, nBuildRC;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;
   lpRelRecord  = lpDataRecord->lpFirstRelRecord;
   nRecordId    = lpDataRecord->lRecordID;
   szRecordName = lpDataRecord->lpRecordName;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "========== Insert ==========", "" );
      TraceLineS( "Inserting entity ", lpViewEntity->lpName );
      if ( lpConnection->nTraceLevel > 2 )
         DisplayEntityInstance( lpView, lpViewEntity->lpName );
   }

   // Build SQL for insert.  If nBuildRC == 1 after build, then there are some
   // long var chars that need to be bound.
   nBuildRC = SqlBuildInsert( zSQL_POSTGRES, lpView, lpViewOD, lpViewEntity,
                              lpConnection->szSqlCmd, &lpBoundAttr );
   if ( nBuildRC == zCALL_ERROR )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   // Execute the INSERT statement.
   if ( !fnExecCommand( lpConnection, 0 ) )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   // If needed, bind any long varchars.
   nRC = WriteLongChar( lpView, lpViewEntity, lpConnection, lpBoundAttr );
   if ( nRC < 0 )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   // Now check to see if a row needs to be added to a corresponance table.
   if ( lpRelRecord && lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )
   {
      nRC = SqlBuildInsertCorrTable( zSQL_POSTGRES, lpView, lpViewOD,
                                     lpViewEntity, lpConnection->szSqlCmd,
                                     &lpBoundAttr );
      SqlFreeBoundAttrList( lpBoundAttr );
   // lpBoundAttr = 0;
      if ( nRC == zCALL_ERROR )
         return( zCALL_ERROR )

      if ( !fnExecCommand( lpConnection, 0 ) )
         return( zCALL_ERROR )
   }

   return( 0 )
}  /* Insert */

/**********************************************************************

      InsertRel

***********************************************************************/
zSHORT
InsertRel( LPVIEWENTITY lpViewEntity,
           zVIEW        lpView,
           LPVIEWOD     lpViewOD,
           LPCONNECTION lpConnection )
{
   LPDATARECORD lpDataRecord;
   LPRELRECORD  lpRelRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   zPCHAR       szRecordName;
   int          nRC;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;
   lpRelRecord  = lpDataRecord->lpFirstRelRecord;
   szRecordName = lpDataRecord->lpRecordName;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "========== Insert Rel ==========", "" );
      TraceLineS( "Inserting relationship for ", lpDataRecord->lpRecordName );

      if ( lpConnection->nTraceLevel > 2 )
      {
         TraceLineS( "PARENT:", "" );
         DisplayEntityInstance( lpView, lpViewEntity->lpParent->lpName );

         TraceLineS( "CHILD:", "" );
         DisplayEntityInstance( lpView, lpViewEntity->lpName );
      }
   }

   // The only thing that needs to be done is to insert the correspondance
   // table if the relationship is many-to-many.
   if ( lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )
   {
      nRC = SqlBuildInsertCorrTable( zSQL_POSTGRES, lpView, lpViewOD,
                                     lpViewEntity, lpConnection->szSqlCmd,
                                     &lpBoundAttr );
      SqlFreeBoundAttrList( lpBoundAttr );
   // lpBoundAttr = 0;
      if ( nRC == zCALL_ERROR )
         return( zCALL_ERROR )

      // Execute the INSERT statement.
      if ( !fnExecCommand( lpConnection, 0 ) )
         return( zCALL_ERROR )
   }

   return( 0 )
}  /* InsertRel */

#if 0
/**********************************************************************

      Delete

***********************************************************************/
zSHORT
Delete( LPVIEWENTITY lpViewEntity,
        zVIEW        lpView,
        LPVIEWOD     lpViewOD,
        LPCONNECTION lpConnection )
{
   LPDATARECORD lpDataRecord;
   LPRELRECORD  lpRelRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   int  nRC;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;
   lpRelRecord  = lpDataRecord->lpFirstRelRecord;

   lpConnection->DBConnection[ lpConnection->nCurrentDB ].bDBUpdated = TRUE;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "========== Delete ==========", "" );
      TraceLineS( "Deleting record ", lpDataRecord->lpRecordName );
      if ( lpConnection->nTraceLevel > 2 )
         DisplayEntityInstance( lpView, lpViewEntity->lpName );
   }

   if ( lpRelRecord && lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )
   {
      nRC = SqlBuildDeleteCorrTable( zSQL_POSTGRES, lpView, lpViewOD,
                                     lpViewEntity, lpConnection->szSqlCmd,
                                     &lpBoundAttr );
      SqlFreeBoundAttrList( lpBoundAttr );
   // lpBoundAttr = 0;
      if ( nRC == zCALL_ERROR )
         return( zCALL_ERROR )

      nRC = sqlcex( lpConnection->hSqlCsr, lpConnection->szSqlCmd, 0 );
      DisplayCommand( "sqlcex", nRC, lpConnection );
      if ( nRC )
         return( zCALL_ERROR )
   }

   nRC = SqlBuildDelete( zSQL_POSTGRES, lpView, lpViewOD, lpViewEntity,
                         lpConnection->szSqlCmd, &lpBoundAttr );
   SqlFreeBoundAttrList( lpBoundAttr );
// lpBoundAttr = 0;
   if ( nRC == zCALL_ERROR )
      return( zCALL_ERROR )

   nRC = sqlcex( lpConnection->hSqlCsr, lpConnection->szSqlCmd, 0 );
   DisplayCommand( "sqlcex", nRC, lpConnection );
   if ( nRC )
      return( zCALL_ERROR )

   return( 0 )
}  /* Delete */

/**********************************************************************

      DeleteRel

***********************************************************************/
zSHORT
DeleteRel( LPVIEWENTITY lpViewEntity,
           zVIEW        lpView,
           LPVIEWOD     lpViewOD,
           LPCONNECTION lpConnection )
{
   LPDATARECORD lpDataRecord;
   LPRELRECORD  lpRelRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   int  nRC;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;
   lpRelRecord  = lpDataRecord->lpFirstRelRecord;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "========== Delete Rel ==========", "" );
      TraceLineS( "Deleting record ", lpDataRecord->lpRecordName );
      if ( lpConnection->nTraceLevel > 2 )
         DisplayEntityInstance( lpView, lpViewEntity->lpName );
   }

   // The only thing that needs to be done is to delete the correspondance
   // table if the relationship is many-to-many.
   if ( lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )
   {
      lpConnection->DBConnection[ lpConnection->nCurrentDB ].bDBUpdated = TRUE;

      nRC = SqlBuildDeleteCorrTable( zSQL_POSTGRES, lpView, lpViewOD,
                                     lpViewEntity, lpConnection->szSqlCmd,
                                     &lpBoundAttr );
      SqlFreeBoundAttrList( lpBoundAttr );
   // lpBoundAttr = 0;
      if ( nRC == zCALL_ERROR )
         return( zCALL_ERROR )

      nRC = sqlcex( lpConnection->hSqlCsr, lpConnection->szSqlCmd, 0 );
      DisplayCommand( "sqlcex", nRC, lpConnection );
      if ( nRC )
         return( zCALL_ERROR )
   }

   return( 0 )
}  /* DeleteRel */

/**********************************************************************

      Update

***********************************************************************/
zSHORT
Update( LPVIEWENTITY lpViewEntity,
        zVIEW        lpView,
        LPVIEWOD     lpViewOD,
        zSHORT       bAutoSeqOnly,
        LPCONNECTION lpConnection )
{
   LPDATARECORD lpDataRecord;
   LPBOUNDATTR  lpBoundAttr = NULL;
   zSHORT  nRC, nBuildRC;

   lpConnection->DBConnection[ lpConnection->nCurrentDB ].bDBUpdated = TRUE;

   lpDataRecord = lpViewEntity->lpFirstDataRecord;

   if ( lpConnection->nTraceLevel > 1 )
   {
      TraceLineS( "", "" );
      TraceLineS( "========== Update ==========", "" );
      TraceLineS( "Updating record ", lpDataRecord->lpRecordName );
      if ( lpConnection->nTraceLevel > 2 )
         DisplayEntityInstance( lpView, lpViewEntity->lpName );
   }

   nBuildRC = SqlBuildUpdate( zSQL_POSTGRES, lpView, lpViewOD, lpViewEntity,
                              bAutoSeqOnly, lpConnection->szSqlCmd,
                              &lpBoundAttr );
   if ( nBuildRC == zCALL_ERROR )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   nRC = sqlcom( lpConnection->hSqlCsr, lpConnection->szSqlCmd, 0 );
   DisplayCommand( "sqlcom", nRC, lpConnection );
   if ( nRC )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   if ( nBuildRC == 1 )
   {
      nRC = WriteLongChar( lpView, lpViewEntity, lpConnection, lpBoundAttr );
      if ( nRC < 0 )
      {
         SqlFreeBoundAttrList( lpBoundAttr );
         return( zCALL_ERROR )
      }
   }

   nRC = sqlexe( lpConnection->hSqlCsr );
   SQL_RC( "sqlexe", nRC, 0, 0, 2 );
   if ( nRC )
   {
      SqlFreeBoundAttrList( lpBoundAttr );
      return( zCALL_ERROR )
   }

   // We don't need it any more...
   SqlFreeBoundAttrList( lpBoundAttr );
   lpBoundAttr = 0;

   // If the entity has auto seq attributes, then the corr table might have
   // to be updated.
   if ( lpViewEntity->bAutoSeq )
   {
      nRC = SqlBuildUpdateCorrTable( zSQL_POSTGRES, lpView, lpViewOD,
                                     lpViewEntity, lpConnection->szSqlCmd,
                                     &lpBoundAttr );
      SqlFreeBoundAttrList( lpBoundAttr );
   // lpBoundAttr = 0;
      if ( nRC == zCALL_ERROR )
         return( zCALL_ERROR )

      nRC = sqlcex( lpConnection->hSqlCsr, lpConnection->szSqlCmd, 0 );
      DisplayCommand( "sqlcex", nRC, lpConnection );
      if ( nRC )
         return( zCALL_ERROR )
   }

   return( 0 )
}  /* Update */

#endif
//=========================================================================
//       UTILITY FUNCTIONS -- in alphabetical order
//=========================================================================


/**********************************************************************

      DBH_Error

***********************************************************************/
void
DBH_Error( zVIEW lpView, zPCHAR pchErrorMsg, int nRC, zPCHAR pchInfo )
{
   MessageSend( lpView, "KZH0101", "Postgres DBH Error",
                pchErrorMsg, zMSGQ_SYSTEM_ERROR, 0 );

   TraceLineS( "===== DBH_Entry Error =====", "" );
   TraceLineS( "Msg=> ", pchErrorMsg );

   if ( nRC )
      TraceLineI( "nRC=> ", nRC );

   if ( pchInfo )
      TraceLineS( pchInfo, "" );
}  // DBH_Error

/**********************************************************************

      DisplayCommand

***********************************************************************/
void
DisplayCommand( zPCHAR       pchRoutine,
                PGresult     *pRetCode,
                LPCONNECTION lpConnection )
{
   zPCHAR  pchErrMsg;
   int     nRC = 0;

   if ( pRetCode == NULL )
   {
      pchErrMsg = PQerrorMessage( lpConnection->pConn );
   }
   else
   {
      nRC = PQresultStatus( pRetCode );
      if ( lpConnection->nTraceLevel == 0 && nRC == PGRES_COMMAND_OK )
         return;
   }

   TraceLineS( "", "" );
   if ( pRetCode == 0 || nRC != PGRES_COMMAND_OK )
      TraceLineS( "===== Postgres Error =====", "" );
   else
      TraceLineS( "===== Postgres RC =====", "" );

   if ( lpConnection->nTraceLevel > 1 )
      TraceLineS( "Postgres Call : ", pchRoutine );

   SqlDisplayCommand( lpConnection->szSqlCmd, 0 );

   if ( pRetCode == NULL )
      TraceLineS( "pRetCode = NULL;  Err msg: ", pchErrMsg );
   else
   {
      switch ( nRC )
      {
         case PGRES_EMPTY_QUERY:
            TraceLineS( "Result status: ", "PGRES_EMPTY_QUERY" );
            break;

         case PGRES_COMMAND_OK:
            TraceLineS( "Result status: ", "PGRES_COMMAND_OK" );
            break;

         case PGRES_TUPLES_OK:
            TraceLineS( "Result status: ", "PGRES_TUPLES_OK" );
            break;

         case PGRES_COPY_OUT:
            TraceLineS( "Result status: ", "PGRES_COPY_OUT" );
            break;

         case PGRES_COPY_IN:
            TraceLineS( "Result status: ", "PGRES_COPY_IN" );
            break;

         case PGRES_BAD_RESPONSE:
            TraceLineS( "Result status: ", "PGRES_BAD_RESPONSE" );
            break;

         case PGRES_NONFATAL_ERROR:
            TraceLineS( "Result status: ", "PGRES_NONFATAL_ERROR" );
            break;

         case PGRES_FATAL_ERROR:
            TraceLineS( "Result status: ", "PGRES_FATAL_ERROR" );
            break;
      }
   }

   if ( pRetCode == 0 || nRC != PGRES_COMMAND_OK )
      MessageSend( lpConnection->lpAppView, "KZH0102", "Postgres DBH Error",
                   "See trace for error code", zMSGQ_SYSTEM_ERROR, 0 );
}  // DisplayCommand

/**********************************************************************

      GetWorkObjectView

      Returns: 0 - Object not found.
               1 - Object found.
               2 - Object not found but created.

***********************************************************************/
zSHORT
GetWorkObjectView( zPVIEW       vDbhWork,
                   zVIEW        lpView,
                   LPVIEWOD     lpViewOD,
                   LPCONNECTION zFAR *plpConnection )
{
   ConnectionRecord ConnRec;
   char   szStr[ 2 ];
   char   szLogicalName[ 64 ];
   zLONG  lTaskID;
   zSHORT nRC;

   nRC = GetViewByName( vDbhWork, zDBHANDLER_WORK_VIEW_NAME,
                        lpView, zLEVEL_SYSTEM );
   if ( nRC < 0 )
   {
      DBH_Error( lpView, "Can't find DB-Handler work view.", 0, 0 );
      return( zCALL_ERROR )
   }

   CreateViewFromViewForTask( vDbhWork, *vDbhWork, lpView );

   // Check to see if the database needs to be opened.  If there is a
   // Database entity in the work object with a szDatabaseName equal to the
   // name of the database as specified in the OD, then the database has been
   // opened.  If there is no database entity with a matching name, then the
   // database needs to be opened.
   if ( lpViewOD->lpDftDBName == 0 )
   {
      DBH_Error( lpView, "Object has no database name", 0, 0 );
      DropView( *vDbhWork );
      return( zCALL_ERROR )
   }

   szStr[ 0 ] = zSQL_POSTGRES;
   szStr[ 1 ] = 0;

   nRC = SetCursorFirstEntityByString( *vDbhWork, "Type", "Type", szStr, "" );
   if ( nRC != zCURSOR_SET )
   {
      DBH_Error( lpView, "Internal error -- cannot find Postgres type in "
                 "db-handler work object.", 0, 0 );
      DropView( *vDbhWork );
      return( zCALL_ERROR )
   }

   lTaskID = SysGetTaskFromView( lpView );
// zltoa( lTaskID, szLogicalName );
// zstrcat( szLogicalName, "\\" );
// zstrcat( szLogicalName, lpViewOD->lpDftDBName );
   sprintf( szLogicalName, "0x%08x:%08d\\%s",
            lpView->hTask, lProcessID, lpViewOD->lpDftDBName );

   nRC = SetCursorFirstEntityByString( *vDbhWork, "Connection",
                                       "LogicalUserName", szLogicalName, "" );
   if ( nRC != zCURSOR_SET )
   {
      //SfCreateSysViewFromView( &plpConnection->vDbhWork, vDbhWork );
      SetNameForView( *vDbhWork, "DG Temp View sqlbase", 0, zLEVEL_SYSTEM );

      nRC = CreateEntity( *vDbhWork, "Connection", zPOS_REUSE_HIDDEN );
      SetAttributeFromString( *vDbhWork, "Connection",
                              "LogicalUserName", szLogicalName );
      SetAttributeFromInteger( *vDbhWork, "Connection", "TaskID", lTaskID );

      zmemset( (zPVOID) &ConnRec, 0, sizeof( ConnRec ) );
      SetAttributeFromBlob( *vDbhWork, "Connection", "ConnectionBlob",
                            (zPVOID) &ConnRec, sizeof( ConnectionRecord ) );

      GetAddrForAttribute( (zPVOID) plpConnection, *vDbhWork,
                           "Connection", "ConnectionBlob" );

      // Allocate space for SQL commands and the column buffer.
      (*plpConnection)->vDbhWork = *vDbhWork;
      (*plpConnection)->hCmdMem = SysAllocMemory( &(*plpConnection)->szSqlCmd,
                                                  COMMAND_BUFFER_LTH,
                                                  0, zCOREMEM_ALLOC, 0 );
      if ( (*plpConnection)->hCmdMem == 0 )
         return( zCALL_ERROR )

      (*plpConnection)->hTblMem = SysAllocMemory( &(*plpConnection)->
                                                          szGlobalTableBuffer,
                                                  TABLE_BUFFER_LTH,
                                                  0, zCOREMEM_ALLOC, 0 );
      if ( (*plpConnection)->hTblMem == 0 )
      {
         SysFreeMemory( (*plpConnection)->hCmdMem );
         return( zCALL_ERROR )
      }

      return( 2 );

   }  // if ( nRC != zCURSOR_SET )...
   else
   {
      GetAddrForAttribute( (zPVOID) plpConnection, *vDbhWork,
                           "Connection", "ConnectionBlob" );
      (*plpConnection)->vDbhWork = *vDbhWork;
      SetNameForView( *vDbhWork, "DG Temp View sqlbase", 0, zLEVEL_SYSTEM );
      return( 1 );
   }

   return( zCALL_ERROR )
}  // GetWorkObjectView

/**********************************************************************

      Postgres_RC

***********************************************************************/
void
Postgres_RC( zPCHAR       szRoutine,
             PGresult     *pRetCode,
             zPCHAR       szInfo1,
             zPCHAR       szInfo2,
             zSHORT       nTrcLvl,
             LPCONNECTION lpConnection )
{
   TraceLineS( "", "" );
   TraceLineS( "Postgres Call : ", szRoutine );

   if ( pRetCode == NULL )
   {
      zPCHAR pszErrMsg;

      pszErrMsg = PQerrorMessage( lpConnection->pConn );
      TraceLineS( "pRetCode = NULL;  Err msg: ", pszErrMsg );
   }
   else
   {
      int    iStatus;

      if ( nTrcLvl > lpConnection->nTraceLevel )
         return;

      iStatus = PQresultStatus( pRetCode );
      switch ( iStatus )
      {
         case PGRES_EMPTY_QUERY:
            TraceLineS( "Result status: ", "PGRES_EMPTY_QUERY" );
            break;

         case PGRES_COMMAND_OK:
            TraceLineS( "Result status: ", "PGRES_COMMAND_OK" );
            break;

         case PGRES_TUPLES_OK:
            TraceLineS( "Result status: ", "PGRES_TUPLES_OK" );
            break;

         case PGRES_COPY_OUT:
            TraceLineS( "Result status: ", "PGRES_COPY_OUT" );
            break;

         case PGRES_COPY_IN:
            TraceLineS( "Result status: ", "PGRES_COPY_IN" );
            break;

         case PGRES_BAD_RESPONSE:
            TraceLineS( "Result status: ", "PGRES_BAD_RESPONSE" );
            break;

         case PGRES_NONFATAL_ERROR:
            TraceLineS( "Result status: ", "PGRES_NONFATAL_ERROR" );
            break;

         case PGRES_FATAL_ERROR:
            TraceLineS( "Result status: ", "PGRES_FATAL_ERROR" );
            break;

      }
   }

   if ( szInfo1 )
   {
      if ( szInfo2 )
         TraceLineS( szInfo1, szInfo2 );
      else
         TraceLineS( szInfo1, "" );
   }

}  // Postgres_RC

/**********************************************************************

      WriteLongChar

***********************************************************************/
zSHORT
WriteLongChar( zVIEW        lpView,
               LPVIEWENTITY lpViewEntity,
               LPCONNECTION lpConnection,
               LPBOUNDATTR  lpFirstBoundAttr )
{
   LPDATAFIELD  lpDataField;
   LPBOUNDATTR  lpBoundAttr;
   zPVOID       lpValue;
   long         lLth;
   zUSHORT      uLth;
   zSHORT       nLongVarCount;
   char         cType;
   zSHORT       nRC;

   // If there are no attributes to be bound, then return.
   if ( lpBoundAttr == 0 )
      return( 0 )

   // For each data field, check to see if the attribute is a blob or has
   // a length of greater than 255.  If either of these are true, then the
   // the attribute needs to be saved as a long varchar.
   nLongVarCount = 0;
   for ( lpBoundAttr = lpFirstBoundAttr;
         lpBoundAttr;
         lpBoundAttr = lpBoundAttr->lpNextBoundAttr )
   {
      lpDataField = lpBoundAttr->lpDataField;
      TraceLineS( "(KZHSQLPG) WriteLongChar attributename = ",
                  lpDataField->lpViewAttrib->lpName );

      nLongVarCount++;

      // Get pointer to var and get length.
      GetValueFromRecord( lpBoundAttr->lpView,
                          lpDataField->lpViewAttrib->lpViewEntity,
                          lpDataField->lpViewAttrib, (zPVOID) &lpValue,
                          &cType, &uLth );

      if ( uLth > 0 )
      {
         // Write attribute value.
      }

   } // for...

   return( 0 )
}  // WriteLongChar

zBOOL
fnExecCommand( LPCONNECTION lpConnection, zPCHAR pszCmd )
{
   PGresult *pRetCode;
   zSHORT   nRC;

   if ( pszCmd == 0 )
   {
      pRetCode = PQexec( lpConnection->pConn, lpConnection->szSqlCmd );
      DisplayCommand( "PQexec", pRetCode, lpConnection );
   }
   else
   {
      pRetCode = PQexec( lpConnection->pConn, pszCmd );
      SQL_RC( pszCmd, pRetCode, "PQexec", 0, 1 );
   }

   if ( pRetCode )
   {
      nRC = PQresultStatus( pRetCode );
      PQclear( pRetCode );
   }

   if ( pRetCode == 0 || nRC != PGRES_COMMAND_OK )
      return( FALSE );
   else
      return( TRUE );

} // fnExecCommand
