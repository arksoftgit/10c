/**
    This file is part of the Zeidon Java Object Engine (Zeidon JOE).

    Zeidon JOE is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Zeidon JOE is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with Zeidon JOE.  If not, see <http://www.gnu.org/licenses/>.

    Copyright 2009-2010 QuinSoft
**/

package com.arksoft.epamms;

import com.quinsoft.zeidon.*;
import com.quinsoft.zeidon.vml.VmlObjectOperations;
import com.quinsoft.zeidon.vml.zVIEW;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.mutable.MutableDouble;
import org.apache.commons.lang3.mutable.MutableInt;

// import com.arksoft.epamms.ZGlobal1_Operation;

/**
   @author DKS
**/

public class TZCMLPLO_Object extends VmlObjectOperations
{
   public TZCMLPLO_Object( View view )
   {
      super( view );
   }

   //:DERIVED ATTRIBUTE OPERATION
   /////////////////////////////////////////////////////////////////////////////
   //
   // OPERATION: oTZCMLPLO_SetCM_ViewName
   //
   // PURPOSE:   This derived attribute determines the view name for an
   //            activated meta instance.
   //
   /////////////////////////////////////////////////////////////////////////////
   public int
   oTZCMLPLO_SetCM_ViewName( View          zView,
                             String  InternalEntityStructure,
                             String  InternalAttribStructure,
                             Integer GetOrSetFlag )
   {
      zLONG  lType;
      zLONG  lZKey;
      zCHAR  szMetaName[ 34 ];
      zCHAR  szCM_ViewName[ 80 ];
      zSHORT nReset;

      szCM_ViewName[ 0 ] = 0;
      if ( nMsg == zDERIVED_GET )
      {
         nReset = ResetViewFromSubobject( zView );
         GetStringFromAttribute( szCM_ViewName, zView, "LPLR", "Name" );
         zstrcat( szCM_ViewName, "." );

         GetIntegerFromAttribute( &lType, zView, "W_MetaType", "Type" );
         CM_GetTypePrefix( (zSHORT) lType, szCM_ViewName + zstrlen( szCM_ViewName ) );

         GetIntegerFromAttribute( &lZKey, zView, "W_MetaDef", "CPLR_ZKey" );
         zltoxa( lZKey, szMetaName );
         zstrcat( szCM_ViewName, szMetaName );

         // Update the value of the DIL message in the object.
         StoreValueInRecord( zView, lpViewEntity, lpViewAttrib, szCM_ViewName, 0 );
         if ( nReset == 0 )
            SetViewToSubobject( zView, "W_MetaType" );
      }

      if ( szCM_ViewName[ 0 ] == 0 )
      {
         TraceLine( "oTZCMLPLO_SetCM_ViewName cannot set CM_ViewName using VEA: 0x%08x.%s.%s for message: %d",
                    zView, lpViewEntity->szName, lpViewAttrib->szName, nMsg );
      }

      return( 0 );
   }
}

