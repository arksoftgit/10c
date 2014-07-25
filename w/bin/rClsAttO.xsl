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
  <fo:simple-page-master master-name="rClsAttO-page" page-height="11in"
   page-width="8.5in" margin-top=".5in" margin-bottom=".5in"
   margin-left="0in" margin-right="0in">
   <fo:region-body margin-top="1.23in" margin-bottom="0.51in"/>
   <fo:region-before extent="1.23in" />
   <fo:region-after extent="0.51in" />
  </fo:simple-page-master>
 </fo:layout-master-set>
  
 <fo:page-sequence master-reference="rClsAttO-page">
   <fo:static-content flow-name="xsl-region-before">
     <fo:block>
  <!-- Page Header  -->
      
      <fo:block font-size="9pt"> <!-- XSLT_HeaderFooter -->
      <!-- In XSLT_GroupRecur -->
      
      <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
      
      <!-- In XSLT_BuildCtrlsInRows -->
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.1in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="1.62in"/>
      <fo:table-column column-width="4.46in"/>
      <fo:table-column column-width="1.66in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-size="11pt" font-weight="bold" >Attendance Sheet for</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-size="11pt" font-weight="bold" ><xsl:value-of select="zOI/PageHeader/Course.Number"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block text-align="right" font-size="11pt" font-weight="bold" ><xsl:value-of select="zOI/PageHeader/Instructor.ShortName"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="7.76in"/>
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
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.05in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="1.11in"/>
      <fo:table-column column-width="0.66in"/>
      <fo:table-column column-width="2.15in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-weight="bold" >Class:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block ><xsl:value-of select="zOI/PageHeader/Course.Number"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block ><xsl:value-of select="zOI/PageHeader/Course.Title"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.04in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="1.11in"/>
      <fo:table-column column-width="2.51in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-weight="bold" >Term/Cohort:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block ><xsl:value-of select="zOI/PageHeader/CollegeTerm.YearSemester"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
      <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
      <fo:table-column column-width="1.11in"/>
      <fo:table-column column-width="1.7in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-weight="bold" >Date:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block border-width="0.5" border-color="black" border-bottom-style="solid" ><fo:leader /></fo:block> <!-- XSLT_BuildControl Empty Shape -->
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
      </fo:table>
      
      </fo:block>
      
      </fo:block>
     </fo:block>
   </fo:static-content>
   <fo:static-content flow-name="xsl-region-after">
     <fo:block font-size="8pt" >
  <!-- Page Footer  -->
      
      <fo:block font-size="9pt"> <!-- XSLT_HeaderFooter -->
      <!-- In XSLT_GroupRecur -->
      
      <!-- NO Rpt_Shape Equal column nbr -->
      
            <!-- In XSLT_BuildCtrlsAsTable -->
            
            <!-- In XSLT_BuildTable -->
            
            <!-- XSLT_BuildTable Control Rpt_Shape10 -->
            
            <!-- XSLT_BuildTable Control Rpt_Shape10 -->
            
            
            <fo:block > <!-- XSLT_BuildTable -->
            
            <fo:table table-layout="fixed" width="100%" margin-top="0.17in">
            <!-- END OF  XSLT_BuildTable -->
            
            <fo:table-column column-width="8.09in"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.33in">
            <!-- In XSLT_BuildBlockData -->
            
                  <fo:block border-width="0.5" border-color="red" border-style="solid" ></fo:block> <!-- XSLT_BuildControl Empty Shape -->
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding" padding-left="0.33in">
            <!-- In XSLT_BuildBlockData -->
            
                  <fo:block text-align="center" font-size="7pt" >| Eastern Nazarene College | 23 East Elm Ave, Quincy, MA 02170 | www.enc.edu |</fo:block> <!-- XSLT_BuildControl -->
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
  
<xsl:template match="GR_Class">
  <fo:block font-size="9pt">
 
 
<!-- Only execute this GroupSet section if  DisplayEnrollment exists in xml. -->
<xsl:if test="DisplayEnrollment">
  <!-- XSLT_EntityRecur DisplayEnrollment -->
 
 
  <!-- ENTITY HEADER -->
 
    <xsl:for-each select="DisplayEnrollmentHeader">
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.08in">
          <fo:table-column column-width="0.35in"/> <!-- This is just for padding -->
          <fo:table-column column-width="7.76in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Note: We encourage the use of MyENC to take attendance. MyENC makes electronic attendance simple, easy, secure and accessible 24/7.</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.04in">
          <fo:table-column column-width="1.44in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.33in"/>
          <fo:table-column column-width="1.28in"/>
          <fo:table-column column-width="1.18in"/>
          <fo:table-column column-width="1.18in"/>
          <fo:table-column column-width="0.9in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Key:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >P - Present</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >A - Absent</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >T - Tardy</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >E - Excused</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="1.44in"/> <!-- This is just for padding -->
          <fo:table-column column-width="6.45in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block border-width="0.5" border-color="black" border-bottom-style="solid" ><fo:leader /></fo:block> <!-- XSLT_BuildControl Empty Shape -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.11in"/>
          <fo:table-column column-width="1.86in"/>
          <fo:table-column column-width="0.93in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-decoration="underline" >Attendence</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-decoration="underline" >Student</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-decoration="underline" >Note</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
    </xsl:for-each>
 
  <!-- ENTITY DETAIL -->
 
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.01in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.11in"/>
          <fo:table-column column-width="1.86in"/>
          <fo:table-column column-width="4.6in"/>
          <fo:table-body>
          <xsl:for-each select="DisplayEnrollment">
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block border-width="0.5" border-color="black" border-bottom-style="solid" ><fo:leader /></fo:block> <!-- XSLT_BuildControl Empty Shape -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DisplayStudentPerson.dFullNameLFM"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block border-width="0.5" border-color="black" border-bottom-style="solid" ><fo:leader /></fo:block> <!-- XSLT_BuildControl Empty Shape -->
              </fo:table-cell>
            </fo:table-row>
            </xsl:for-each>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
</xsl:if>
  </fo:block>
</xsl:template>
</xsl:stylesheet>
