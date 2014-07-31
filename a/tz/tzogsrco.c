#define KZSYSSVC_INCL
#include "KZOENGAA.H" 
#include "TZ__OPRS.H" 
#include "ZDRVROPR.H" 
 
#ifdef __cplusplus
extern "C"
{
#endif
 
#include "ZEIDONOP.H"

//:TRANSFORMATION OPERATION
//:GlobalOperGrpMigrate( VIEW        NewOperGrp BASED ON LOD TZOGSRCO,
//:                      STRING (32) OperGroupMetaName,
//:                      VIEW        SourceLPLR BASED ON LOD TZCMLPLO,
//:                      VIEW        vSubtask )

//:   VIEW OldOperGrp  BASED ON LOD TZOGSRCO
zOPER_EXPORT zSHORT OPERATION
oTZOGSRCO_GlobalOperGrpMigrate( zVIEW     NewOperGrp,
                                zPCHAR    OperGroupMetaName,
                                zVIEW     SourceLPLR,
                                zVIEW     vSubtask )
{
   zVIEW     OldOperGrp = 0; 
   //:VIEW CurrentLPLR BASED ON LOD TZCMLPLO
   zVIEW     CurrentLPLR = 0; 

   //:STRING ( 513 ) SourceFileName                    // size according to zMAX_FILESPEC+1
   zCHAR     SourceFileName[ 514 ] = { 0 }; 
   //:STRING ( 513 ) SourceFileName2                   // size according to zMAX_FILESPEC+1
   zCHAR     SourceFileName2[ 514 ] = { 0 }; 
   //:STRING ( 36 ) SourceName
   zCHAR     SourceName[ 37 ] = { 0 }; 
   zSHORT    lTempInteger_0; 
   zSHORT    RESULT; 
   zCHAR     szTempString_0[ 33 ]; 


   //:// Activate existing source meta OldOperGroup
   //:SourceFileName = SourceLPLR.LPLR.MetaSrcDir + "\" + OperGroupMetaName + ".POG"
   GetStringFromAttribute( SourceFileName, SourceLPLR, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( SourceFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( SourceFileName, 1, 0, OperGroupMetaName, 1, 0, 514 );
   ZeidonStringConcat( SourceFileName, 1, 0, ".POG", 1, 0, 514 );
   //:// zIGNORE_ATTRIB_ERRORS=8192
   //:ActivateOI_FromFile( OldOperGrp, "TZOGSRCO", SourceLPLR,
   //:                     SourceFileName, zSINGLE + 8192 )
   ActivateOI_FromFile( &OldOperGrp, "TZOGSRCO", SourceLPLR, SourceFileName, zSINGLE + 8192 );
   //:NAME VIEW OldOperGrp "OldOperGrp"
   SetNameForView( OldOperGrp, "OldOperGrp", 0, zLEVEL_TASK );
   //://ActivateEmptyMetaOI( vSubtask, NewOperGrp, 14, zSINGLE ) // 14 is zSOURCE_GOPGRP_META
   //://NAME VIEW NewOperGrp "NewOperGrp"

   //:IF NewOperGrp.GlobalOperationGroup DOES NOT EXIST
   lTempInteger_0 = CheckExistenceOfEntity( NewOperGrp, "GlobalOperationGroup" );
   if ( lTempInteger_0 != 0 )
   { 

      //:// The Global Operation Group does not exist in the target, so simply copy everything over.

      //:CreateMetaEntity( vSubtask, NewOperGrp, "GlobalOperationGroup", zPOS_AFTER )
      CreateMetaEntity( vSubtask, NewOperGrp, "GlobalOperationGroup", zPOS_AFTER );
      //:SetMatchingAttributesByName( NewOperGrp, "GlobalOperationGroup", OldOperGrp, "GlobalOperationGroup", zSET_NULL )
      SetMatchingAttributesByName( NewOperGrp, "GlobalOperationGroup", OldOperGrp, "GlobalOperationGroup", zSET_NULL );

      //:// Copy over the source file to the new LPLR directory, if there is a source file.
      //:// We will assume a source file exists if the SourceFile.Extension is not null.  If there
      //:// is actually no source file, the CopyFile does no harm.
      //:IF OldOperGrp.GlobalOperationGroup.Extension != ""
      if ( CompareAttributeToString( OldOperGrp, "GlobalOperationGroup", "Extension", "" ) != 0 )
      { 
         //:RetrieveViewForMetaList( vSubtask, CurrentLPLR, zSOURCE_ERD_META ) // Get view for directory info.
         RetrieveViewForMetaList( vSubtask, &CurrentLPLR, zSOURCE_ERD_META );
         //:ResetViewFromSubobject( CurrentLPLR )
         ResetViewFromSubobject( CurrentLPLR );
         //:IF OldOperGrp.GlobalOperationGroup.Extension = "C"
         if ( CompareAttributeToString( OldOperGrp, "GlobalOperationGroup", "Extension", "C" ) == 0 )
         { 
            //:SourceName = OperGroupMetaName + ".C"
            ZeidonStringCopy( SourceName, 1, 0, OperGroupMetaName, 1, 0, 37 );
            ZeidonStringConcat( SourceName, 1, 0, ".C", 1, 0, 37 );
            //:ELSE
         } 
         else
         { 
            //:SourceName = OperGroupMetaName + ".VML"
            ZeidonStringCopy( SourceName, 1, 0, OperGroupMetaName, 1, 0, 37 );
            ZeidonStringConcat( SourceName, 1, 0, ".VML", 1, 0, 37 );
         } 

         //:END
         //:SourceFileName = SourceLPLR.LPLR.PgmSrcDir + "\" + SourceName
         GetStringFromAttribute( SourceFileName, SourceLPLR, "LPLR", "PgmSrcDir" );
         ZeidonStringConcat( SourceFileName, 1, 0, "\\", 1, 0, 514 );
         ZeidonStringConcat( SourceFileName, 1, 0, SourceName, 1, 0, 514 );
         //:SourceFileName2 = CurrentLPLR.LPLR.PgmSrcDir + "\" + SourceName
         GetStringFromAttribute( SourceFileName2, CurrentLPLR, "LPLR", "PgmSrcDir" );
         ZeidonStringConcat( SourceFileName2, 1, 0, "\\", 1, 0, 514 );
         ZeidonStringConcat( SourceFileName2, 1, 0, SourceName, 1, 0, 514 );
         //:SysCopyFile( vSubtask, SourceFileName, SourceFileName2, TRUE )
         SysCopyFile( vSubtask, SourceFileName, SourceFileName2, TRUE );
         //:DropMetaOI( vSubtask, CurrentLPLR )
         DropMetaOI( vSubtask, CurrentLPLR );
      } 

      //:END

      //:FOR EACH OldOperGrp.Operation
      RESULT = SetCursorFirstEntity( OldOperGrp, "Operation", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 

         //:CreateMetaEntity( vSubtask, NewOperGrp, "Operation", zPOS_AFTER )
         CreateMetaEntity( vSubtask, NewOperGrp, "Operation", zPOS_AFTER );
         //:SetMatchingAttributesByName ( NewOperGrp, "Operation", OldOperGrp,
         //:                              "Operation", zSET_NULL )
         SetMatchingAttributesByName( NewOperGrp, "Operation", OldOperGrp, "Operation", zSET_NULL );

         //:FOR EACH OldOperGrp.Parameter
         RESULT = SetCursorFirstEntity( OldOperGrp, "Parameter", "" );
         while ( RESULT > zCURSOR_UNCHANGED )
         { 
            //:// Make sure the ShortDesc in the Parameter is not null.
            //:IF OldOperGrp.Parameter.ShortDesc = ""
            if ( CompareAttributeToString( OldOperGrp, "Parameter", "ShortDesc", "" ) == 0 )
            { 
               //:OldOperGrp.Parameter.ShortDesc = "Parm"
               SetAttributeFromString( OldOperGrp, "Parameter", "ShortDesc", "Parm" );
            } 

            //:END
            //:CreateMetaEntity( vSubtask, NewOperGrp, "Parameter", zPOS_AFTER )
            CreateMetaEntity( vSubtask, NewOperGrp, "Parameter", zPOS_AFTER );
            //:SetMatchingAttributesByName( NewOperGrp, "Parameter", OldOperGrp,
            //:                             "Parameter", zSET_NULL )
            SetMatchingAttributesByName( NewOperGrp, "Parameter", OldOperGrp, "Parameter", zSET_NULL );
            RESULT = SetCursorNextEntity( OldOperGrp, "Parameter", "" );
         } 

         RESULT = SetCursorNextEntity( OldOperGrp, "Operation", "" );
         //:END
      } 


      //:END

      //:ELSE
   } 
   else
   { 

      //:// The Global Operation Group exists in the target, so merge in any new Operations.
      //:// We will force over any Operations (both prototype and code) for any Operations not flagged as modified in target LPLR.

      //:FOR EACH OldOperGrp.Operation
      RESULT = SetCursorFirstEntity( OldOperGrp, "Operation", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 

         //:SET CURSOR FIRST NewOperGrp.Operation WHERE NewOperGrp.Operation.Name = OldOperGrp.Operation.Name
         GetStringFromAttribute( szTempString_0, OldOperGrp, "Operation", "Name" );
         RESULT = SetCursorFirstEntityByString( NewOperGrp, "Operation", "Name", szTempString_0, "" );
         //:IF RESULT < zCURSOR_SET
         if ( RESULT < zCURSOR_SET )
         { 
            //:CreateMetaEntity( vSubtask, NewOperGrp, "Operation", zPOS_AFTER )
            CreateMetaEntity( vSubtask, NewOperGrp, "Operation", zPOS_AFTER );
            //:SetMatchingAttributesByName ( NewOperGrp, "Operation", OldOperGrp, "Operation", zSET_NULL )
            SetMatchingAttributesByName( NewOperGrp, "Operation", OldOperGrp, "Operation", zSET_NULL );
         } 

         //:END

         //:// If the operation is new or modifiable, set new parameters and operation code.
         //:IF NewOperGrp.Operation.DoNotMergeFlag = ""
         if ( CompareAttributeToString( NewOperGrp, "Operation", "DoNotMergeFlag", "" ) == 0 )
         { 
            //:FOR EACH NewOperGrp.Parameter
            RESULT = SetCursorFirstEntity( NewOperGrp, "Parameter", "" );
            while ( RESULT > zCURSOR_UNCHANGED )
            { 
               //:DELETE ENTITY NewOperGrp.Parameter NONE
               RESULT = DeleteEntity( NewOperGrp, "Parameter", zREPOS_NONE );
               RESULT = SetCursorNextEntity( NewOperGrp, "Parameter", "" );
            } 

            //:END
            //:FOR EACH OldOperGrp.Parameter
            RESULT = SetCursorFirstEntity( OldOperGrp, "Parameter", "" );
            while ( RESULT > zCURSOR_UNCHANGED )
            { 
               //:// Make sure the ShortDesc in the Parameter is not null.
               //:IF OldOperGrp.Parameter.ShortDesc = ""
               if ( CompareAttributeToString( OldOperGrp, "Parameter", "ShortDesc", "" ) == 0 )
               { 
                  //:OldOperGrp.Parameter.ShortDesc = "Parm"
                  SetAttributeFromString( OldOperGrp, "Parameter", "ShortDesc", "Parm" );
               } 

               //:END
               //:CreateMetaEntity( vSubtask, NewOperGrp, "Parameter", zPOS_AFTER )
               CreateMetaEntity( vSubtask, NewOperGrp, "Parameter", zPOS_AFTER );
               //:SetMatchingAttributesByName( NewOperGrp, "Parameter", OldOperGrp, "Parameter", zSET_NULL )
               SetMatchingAttributesByName( NewOperGrp, "Parameter", OldOperGrp, "Parameter", zSET_NULL );
               RESULT = SetCursorNextEntity( OldOperGrp, "Parameter", "" );
            } 

            //:END
         } 

         RESULT = SetCursorNextEntity( OldOperGrp, "Operation", "" );

         //:   // Add new Operation Code.
         //:   // CopyOperationCode

         //:END
      } 


      //:END
   } 


   //:END



   //:DropObjectInstance( OldOperGrp )
   DropObjectInstance( OldOperGrp );
   //:CommitMetaOI( vSubtask, NewOperGrp, 14 )   // 14 is zSOURCE_GOPGRP_META
   CommitMetaOI( vSubtask, NewOperGrp, 14 );

   //:// Build the prototypes in zeidon.h file.
   //:RetrieveViewForMetaList( vSubtask, CurrentLPLR, zSOURCE_GOPGRP_META ) // Get view for Merge oper.
   RetrieveViewForMetaList( vSubtask, &CurrentLPLR, zSOURCE_GOPGRP_META );
   //:ResetViewFromSubobject( CurrentLPLR )
   ResetViewFromSubobject( CurrentLPLR );
   //:MergeGlobalPrototypes( NewOperGrp,
   //:                       NewOperGrp.GlobalOperationGroup.Name,
   //:                       "GlobalOperationGroup",
   //:                       CurrentLPLR )
   GetStringFromAttribute( szTempString_0, NewOperGrp, "GlobalOperationGroup", "Name" );
   MergeGlobalPrototypes( NewOperGrp, szTempString_0, "GlobalOperationGroup", CurrentLPLR );
   //:DropMetaOI( vSubtask, CurrentLPLR )
   DropMetaOI( vSubtask, CurrentLPLR );
   return( 0 );
// END
} 


//:ENTITY CONSTRAINT OPERATION
//:AcceptParameter( VIEW OperGrp BASED ON LOD TZOGSRCO,
//:                 STRING ( 32 ) sEntityName,
//:                 SHORT Event,
//:                 SHORT State )
zOPER_EXPORT zSHORT OPERATION
oTZOGSRCO_AcceptParameter( zVIEW     OperGrp,
                           zPCHAR    sEntityName,
                           zSHORT    Event,
                           zSHORT    State )
{


   //:CASE Event
   switch( Event )
   { 
      //:OF   zECE_ACCEPT:
      case zECE_ACCEPT :

         //:// For a string parameter, force on the Return Value flag.
         //:/*  removed HH 4.11.98
         //:IF  OperGrp.Parameter.DataType = "S" AND
         //:OperGrp.Parameter.PFlag != "Y"
         //:     OperGrp.Parameter.PFlag = "Y"
         //:     MessageSend( OperGrp, "OP00812", "Operations",
         //:                  "Forcing the setting of 'Return Value' for string parameters.",
         //:                  zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
         //:END
         //:*/
         //:RETURN 0
         return( 0 );

         //:/* end zECE_ACCEPT */
         //:OF   zECE_CANCEL:
         case zECE_CANCEL :
            break ;

         //:/* end zECE_CANCEL */
         //:OF   zECE_CREATE:
         case zECE_CREATE :
            break ;

         //:/* end zECE_CREATE */
         //:OF   zECE_DELETE:
         case zECE_DELETE :
            break ;

         //:/* end zECE_DELETE */
         //:OF   zECE_EXCLUDE:
         case zECE_EXCLUDE :
            break ;

         //:/* end zECE_EXCLUDE */
         //:OF   zECE_INCLUDE:
         case zECE_INCLUDE :
            break ;
      } 


      //:/* end zECE_INCLUDE */
      //:END  /* case */
      return( 0 );
   } 


 
#ifdef __cplusplus
}
#endif
