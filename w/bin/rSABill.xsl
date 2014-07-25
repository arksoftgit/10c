<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>
  
<xsl:attribute-set name="DefaultCellPadding">
  <xsl:attribute name="padding-left">5px</xsl:attribute>
  <xsl:attribute name="padding-top">2px</xsl:attribute>
  <xsl:attribute name="padding-bottom">2px</xsl:attribute>
</xsl:attribute-set>
  
<xsl:template match="/">
  
<fo:root>
 <fo:layout-master-set>
  <fo:simple-page-master master-name="rSABill-page" page-height="11in"
   page-width="8.5in" margin-top=".5in" margin-bottom=".5in"
   margin-left="0in" margin-right="0in">
   <fo:region-body margin-top="0.03in" margin-bottom="0.7in"/>
   <fo:region-before extent="0.03in" />
   <fo:region-after extent="0.7in" />
  </fo:simple-page-master>
 </fo:layout-master-set>
  
 <fo:page-sequence master-reference="rSABill-page">
   <fo:static-content flow-name="xsl-region-before">
     <fo:block>
     </fo:block>
   </fo:static-content>
   <fo:static-content flow-name="xsl-region-after">
     <fo:block font-size="8pt" >
  <!-- Page Footer  -->
      
      <fo:block font-size="9pt"> <!-- XSLT_HeaderFooter -->
      <!-- In XSLT_GroupRecur -->
      
      <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
      
      <!-- In XSLT_BuildCtrlsInRows -->
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.37in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="7.94in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block border-width="0.5" border-color="red" border-style="solid" ></fo:block> <!-- XSLT_BuildControl Empty Shape -->
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.06in">
      <fo:table-column column-width="0.34in"/> <!-- This is just for padding -->
      <fo:table-column column-width="7.14in"/>
      <fo:table-column column-width="0.62in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-size="7pt" font-weight="bold" >Student Accounts: 617-745-3600   stuaccts@enc.edu   Financial Aid 617-745-3712   finaid@enc.edu    Check MY.ENC.EDU for up-to-the-minute information.</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block text-align="right" font-size="7pt" > <!-- XSLT_BuildControl -->
            Page <fo:page-number/> 
            </fo:block>
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      </fo:block>
     </fo:block>
   </fo:static-content>
  
   <fo:flow flow-name="xsl-region-body">
  
     <xsl:apply-templates/>
     <fo:block id="last-page"></fo:block>
  
   </fo:flow>
  
 </fo:page-sequence>
</fo:root> 
</xsl:template>
  
<xsl:template match="GR_StudentAccountProfile">
  <fo:block font-size="9pt">
 
 
<!-- Only execute this GroupSet section if  StudentAccountProfile exists in xml. -->
<xsl:if test="StudentAccountProfile">
  <!-- XSLT_EntityRecur StudentAccountProfile -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="StudentAccountProfile">
    <!-- In XSLT_GroupRecur -->
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.41in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="0.62in"/> <!-- This is just for padding -->
    <fo:table-column column-width="0.88in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
    <fo:block  > <!-- XSLT_BuildControl-->
      <fo:external-graphic src="" padding-top="0.41in"
         content-width="scale-to-fit"
         content-height="scale-to-fit"
         width="100%" scaling="uniform"/>
    </fo:block>
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="1.65in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.11in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block font-size="10pt" >Eastern Nazarene College</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.25in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.21in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Please make checks payable to:</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="1.65in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.76in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Office Of Student Accounts</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.54in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.95in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Eastern Nazarene College</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="1.65in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.76in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >23 East Elm Avenue</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.54in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.95in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Office Of Student Accounts</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="1.65in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.76in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Quincy, MA   02170-2999</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.54in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.95in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >23 East Elm Avenue</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.54in"/> <!-- This is just for padding -->
    <fo:table-column column-width="1.95in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Quincy, MA   02170-2999</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.25in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.93in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Include Campus ID in memo section of the check.</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="5.54in"/> <!-- This is just for padding -->
    <fo:table-column column-width="0.72in"/>
    <fo:table-column column-width="1.13in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block >Campus ID:</fo:block> <!-- XSLT_BuildControl -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block ><xsl:value-of select="Person.CampusID"/></fo:block> <!-- XSLT_BuildControl-->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="0.79in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.76in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block font-size="10pt" ><xsl:value-of select="Person.dFullNameLFM"/></fo:block> <!-- XSLT_BuildControl-->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="4.93in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.87in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
        <!-- ** Rpt_Shape Rpt_Shape2 ** -->
        <fo:block  > <!-- XSLT_GroupRecur For Row -->
    
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.15in">
          <fo:table-column column-width="0.16in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.58in"/>
          <fo:table-column column-width="0.85in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Statement Date:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="Root.StatementDate"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="0.16in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.58in"/>
          <fo:table-column column-width="0.85in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Due Date:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="Root.DueDate"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.11in">
          <fo:table-column column-width="1.86in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.73in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="1.75in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.85in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" ><xsl:value-of select="StudentAccountProfile.BillingBalanceDue"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.16in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.55in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" ><xsl:value-of select="StudentAccountProfile.BillingFinalBalanceText"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
        </fo:block>
    
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="0.79in"/> <!-- This is just for padding -->
    <fo:table-column column-width="2.76in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block font-size="10pt" ><xsl:value-of select="Address.dFullAddress"/></fo:block> <!-- XSLT_BuildControl-->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="0.01in"/> <!-- This is just for padding -->
    <fo:table-column column-width="0.23in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
    <!-- In XSLT_BuildBlockData -->
    
          <fo:block ></fo:block> <!-- XSLT_BuildControl Empty Shape -->
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
 
<!-- Only execute this GroupSet section if  BillingComment exists in xml. -->
<xsl:if test="BillingComment">
  <!-- XSLT_EntityRecur BillingComment -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="BillingComment">
          <!-- In XSLT_GroupRecur -->
          
          <!-- NO Rpt_Shape Equal column nbr -->
          
                <!-- In XSLT_BuildCtrlsAsTable -->
                
                <!-- In XSLT_BuildTable -->
                
                <!-- XSLT_BuildTable Control Rpt_Text29 -->
                
                <!-- XSLT_BuildTable Control Rpt_Text29 -->
                
                
                <fo:block > <!-- XSLT_BuildTable -->
                
                <fo:table table-layout="fixed" width="100%" margin-top="0.08in">
                <!-- END OF  XSLT_BuildTable -->
                
                <fo:table-column column-width="7.83in"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.56in">
                <!-- In XSLT_BuildBlockData -->
                
                      <fo:block>  <!-- XSLT_BuildControl -->
                      <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.56in">
                <!-- In XSLT_BuildBlockData -->
                
                      <fo:block ><xsl:value-of select="BillingComment.Note"/></fo:block> <!-- XSLT_BuildControl-->
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.56in">
                <!-- In XSLT_BuildBlockData -->
                
                      <fo:block>  <!-- XSLT_BuildControl -->
                      <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
                </fo:table>
                </fo:block>
    </xsl:for-each>
</xsl:if>
 
<!-- Only execute this GroupSet section if  BillingLine exists in xml. -->
<xsl:if test="BillingLine">
  <!-- XSLT_EntityRecur BillingLine -->
 
 
  <!-- ENTITY HEADER -->
 
    <xsl:for-each select="BillingLineHeader">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.06in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="4.96in"/>
          <fo:table-column column-width="1.23in"/>
          <fo:table-column column-width="0.89in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Transactions</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Balance Forward:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="StudentAccountProfile.BillingBalanceForward"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="1.44in"/> <!-- This is just for padding -->
          <fo:table-column column-width="3.83in"/>
          <fo:table-column column-width="0.93in"/>
          <fo:table-column column-width="0.83in"/>
          <fo:table-column column-width="0.57in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Description</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" >Charge</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" >Paymt/CR</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" >Balance</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.75in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Date</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
 
  <!-- ENTITY DETAIL -->
 
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.83in"/>
          <fo:table-column column-width="3.72in"/>
          <fo:table-column column-width="0.93in"/>
          <fo:table-column column-width="0.93in"/>
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
          <xsl:for-each select="BillingLine">
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="BillingLine.TransactionDate"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="BillingLine.Description"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="BillingLine.Charge"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="BillingLine.Payment"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="BillingLine.RunningBalance"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
            </xsl:for-each>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
 
  <!-- ENTITY FOOTER -->
 
    <xsl:for-each select="BillingLineFooter">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="7.05in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="3.45in"/> <!-- This is just for padding -->
          <fo:table-column column-width="3.59in"/>
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" >Current Balance: </fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" ><xsl:value-of select="StudentAccountProfile.BillingBalanceDue"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
</xsl:if>
 
<!-- Only execute this GroupSet section if  PendingFinAid exists in xml. -->
<xsl:if test="PendingFinAid">
  <!-- XSLT_EntityRecur PendingFinAid -->
 
 
  <!-- ENTITY HEADER -->
 
    <xsl:for-each select="PendingFinAidHeader">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.28in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.8in"/>
          <fo:table-column column-width="1.3in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Anticipated Financial Aid for:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" ><xsl:value-of select="Work.DisplayPendingAidPeriod"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.03in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.03in"/>
          <fo:table-column column-width="5.4in"/>
          <fo:table-column column-width="0.57in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Award Status</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Awards</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" >Amount</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
 
  <!-- ENTITY DETAIL -->
 
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.03in"/>
          <fo:table-column column-width="5.4in"/>
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
          <xsl:for-each select="PendingFinAid">
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="PendingFinAid.AwardStatus"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="PendingFinAid.Description"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="PendingFinAid.Amount"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
            </xsl:for-each>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
 
  <!-- ENTITY FOOTER -->
 
    <xsl:for-each select="PendingFinAidFooter">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="7.05in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="3.12in"/> <!-- This is just for padding -->
          <fo:table-column column-width="3.92in"/>
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" >Total Anticipated Awards: </fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" ><xsl:value-of select="StudentAccountProfile.BillingPendingFinAidTotal"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.02in">
          <fo:table-column column-width="7.05in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="3.12in"/> <!-- This is just for padding -->
          <fo:table-column column-width="3.92in"/>
          <fo:table-column column-width="0.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" >Estimated Balance After Award Disbursement:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" font-weight="bold" ><xsl:value-of select="StudentAccountProfile.BillingStudentBalance"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
</xsl:if>
 
<!-- Only execute this GroupSet section if  BillingRegistration exists in xml. -->
<xsl:if test="BillingRegistration">
  <!-- XSLT_EntityRecur BillingRegistration -->
 
 
  <!-- ENTITY HEADER -->
 
    <xsl:for-each select="BillingRegistrationHeader">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.31in">
          <fo:table-column column-width="0.53in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.9in"/>
          <fo:table-column column-width="1.3in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Schedule for:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" ><xsl:value-of select="CollegeTerm.YearSemester"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.05in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.89in"/>
          <fo:table-column column-width="2.28in"/>
          <fo:table-column column-width="1.01in"/>
          <fo:table-column column-width="0.84in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Course No.</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Course Title</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Status</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-weight="bold" >Credits</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.56in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
 
  <!-- ENTITY DETAIL -->
 
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.89in"/>
          <fo:table-column column-width="2.28in"/>
          <fo:table-column column-width="1.01in"/>
          <fo:table-column column-width="0.41in"/>
          <fo:table-body>
          <xsl:for-each select="BillingRegistration">
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="BillingRegistration.BillingCourseNumber"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="BillingRegistration.BillingCourseTitle"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="BillingRegistration.BillingStatus"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="BillingRegistration.BillingCreditHours"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
            </xsl:for-each>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
 
  <!-- ENTITY FOOTER -->
 
    <xsl:for-each select="BillingRegistrationFooter">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="4.81in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.42in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block>  <!-- XSLT_BuildControl -->
                <fo:leader leader-pattern="rule" leader-length.optimum="100%" rule-style="solid" rule-thickness="1pt"/>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="3.42in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.38in"/>
          <fo:table-column column-width="0.41in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Total Enrolled Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="StudentAccountProfile.BillingTotalCredits"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
</xsl:if>
 
<!-- Only execute this GroupSet section if  TruthInLendingDisclosure exists in xml. -->
<xsl:if test="TruthInLendingDisclosure">
  <!-- XSLT_EntityRecur TruthInLendingDisclosure -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="TruthInLendingDisclosure">
          <!-- In XSLT_GroupRecur -->
          
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.21in"> <!-- In XSLT_GroupRecur -->
          <fo:table-column column-width="2.35in"/> <!-- This is just for padding -->
          <fo:table-column column-width="3.59in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block> <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <!-- In XSLT_BuildBlockData -->
          
                <fo:block text-align="center" font-weight="bold" >Federal Truth-In-Lending Disclosure Statement</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
          <fo:table-column column-width="0.61in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.17in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block> <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <!-- In XSLT_BuildBlockData -->
          
                <fo:block ><xsl:value-of select="TruthInLendingDisclosure.StatementText"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in"> <!-- In XSLT_GroupRecur -->
          <fo:table-column column-width="0.58in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.49in"/>
          <fo:table-column column-width="1.5in"/>
          <fo:table-column column-width="1.48in"/>
          <fo:table-column column-width="1.51in"/>
          <fo:table-column column-width="1.45in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block> <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
              <!-- ** Rpt_Shape Rpt_Shape3 ** -->
              <fo:block  > <!-- XSLT_GroupRecur For Row -->
          
                <!-- In XSLT_GroupRecur -->
                
                <!-- NO Rpt_Shape Equal column nbr -->
                
                      <!-- In XSLT_BuildCtrlsAsTable -->
                      
                      <!-- In XSLT_BuildTable -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text32 -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text32 -->
                      
                      
                      <fo:block > <!-- XSLT_BuildTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.09in">
                      <!-- END OF  XSLT_BuildTable -->
                      
                      <fo:table-column column-width="1.38in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.08in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block font-size="7pt" >Annual Percentage Rate: The cost of your credit as a yearly rate :</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.39in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block text-align="right" font-size="8pt" font-weight="bold" >15%</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      </fo:block>
              </fo:block>
          
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
              <!-- ** Rpt_Shape Rpt_Shape4 ** -->
              <fo:block  > <!-- XSLT_GroupRecur For Row -->
          
                <!-- In XSLT_GroupRecur -->
                
                <!-- NO Rpt_Shape Equal column nbr -->
                
                      <!-- In XSLT_BuildCtrlsAsTable -->
                      
                      <!-- In XSLT_BuildTable -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text62 -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text62 -->
                      
                      
                      <fo:block > <!-- XSLT_BuildTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.09in">
                      <!-- END OF  XSLT_BuildTable -->
                      
                      <fo:table-column column-width="1.37in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.07in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block font-size="7pt" >Your current existing balance:</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.42in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block text-align="right" font-size="8pt" font-weight="bold" ><xsl:value-of select="TruthInLendingDisclosure.CurrentBalance"/></fo:block> <!-- XSLT_BuildControl-->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      </fo:block>
              </fo:block>
          
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
              <!-- ** Rpt_Shape Rpt_Shape5 ** -->
              <fo:block  > <!-- XSLT_GroupRecur For Row -->
          
                <!-- In XSLT_GroupRecur -->
                
                <!-- NO Rpt_Shape Equal column nbr -->
                
                      <!-- In XSLT_BuildCtrlsAsTable -->
                      
                      <!-- In XSLT_BuildTable -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text63 -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text63 -->
                      
                      
                      <fo:block > <!-- XSLT_BuildTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.09in">
                      <!-- END OF  XSLT_BuildTable -->
                      
                      <fo:table-column column-width="1.39in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.09in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block font-size="7pt" >Finance Charge: The estimated dollar amount the credit will cost you.</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.39in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block text-align="right" font-size="8pt" font-weight="bold" ><xsl:value-of select="TruthInLendingDisclosure.FinanceChargeTotal"/></fo:block> <!-- XSLT_BuildControl-->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      </fo:block>
              </fo:block>
          
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
              <!-- ** Rpt_Shape Rpt_Shape6 ** -->
              <fo:block  > <!-- XSLT_GroupRecur For Row -->
          
                <!-- In XSLT_GroupRecur -->
                
                <!-- NO Rpt_Shape Equal column nbr -->
                
                      <!-- In XSLT_BuildCtrlsAsTable -->
                      
                      <!-- In XSLT_BuildTable -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text64 -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text64 -->
                      
                      
                      <fo:block > <!-- XSLT_BuildTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.09in">
                      <!-- END OF  XSLT_BuildTable -->
                      
                      <fo:table-column column-width="1.41in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.09in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block font-size="7pt" >Total of Payments: The estimated amount you will have paid when you have made all the payments.</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.45in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block text-align="right" font-size="8pt" font-weight="bold" ><xsl:value-of select="TruthInLendingDisclosure.PaymentAmountTotal"/></fo:block> <!-- XSLT_BuildControl-->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      </fo:block>
              </fo:block>
          
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
              <!-- ** Rpt_Shape Rpt_Shape8 ** -->
              <fo:block  > <!-- XSLT_GroupRecur For Row -->
          
                <!-- In XSLT_GroupRecur -->
                
                <!-- NO Rpt_Shape Equal column nbr -->
                
                      <!-- In XSLT_BuildCtrlsAsTable -->
                      
                      <!-- In XSLT_BuildTable -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text65 -->
                      
                      <!-- XSLT_BuildTable Control Rpt_Text65 -->
                      
                      
                      <fo:block > <!-- XSLT_BuildTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.09in">
                      <!-- END OF  XSLT_BuildTable -->
                      
                      <fo:table-column column-width="1.37in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.09in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block font-size="7pt" >The number of months it will take you to pay off the balance:</fo:block> <!-- XSLT_BuildControl -->
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.48in">
                      <!-- In XSLT_BuildBlockData -->
                      
                            <fo:block text-align="right" font-size="8pt" font-weight="bold" ><xsl:value-of select="TruthInLendingDisclosure.TimePeriodToPayOffLoanInMonths"/></fo:block> <!-- XSLT_BuildControl-->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      </fo:block>
              </fo:block>
          
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
    </xsl:for-each>
</xsl:if>
    </xsl:for-each>
</xsl:if>
  </fo:block>
</xsl:template>
</xsl:stylesheet>
