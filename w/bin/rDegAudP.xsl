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
  <fo:simple-page-master master-name="rDegAudP-page" page-height="11in"
   page-width="8.5in" margin-top=".5in" margin-bottom=".5in"
   margin-left="0in" margin-right="0in">
   <fo:region-body margin-top="0.4in" margin-bottom="0.28in"/>
   <fo:region-before extent="0.4in" />
   <fo:region-after extent="0.28in" />
  </fo:simple-page-master>
 </fo:layout-master-set>
  
 <fo:page-sequence master-reference="rDegAudP-page">
   <fo:static-content flow-name="xsl-region-before">
     <fo:block>
  <!-- Page Header  -->
      
      <fo:block font-size="9pt"> <!-- XSLT_HeaderFooter -->
      <!-- In XSLT_GroupTable -->
      
      
      <fo:block > <!-- XSLT_GroupTable -->
      
      <fo:table table-layout="fixed" width="100%" margin-top="0.11in">
      <fo:table-column column-width="0.48in"/> <!-- This is just for padding -->
      <fo:table-column column-width="1.25in"/>
      <fo:table-column column-width="2.02in"/>
      <fo:table-column column-width="0.43in"/>
      <fo:table-column column-width="1.31in"/>
      <fo:table-column column-width="0.42in"/>
      <fo:table-column column-width="0.91in"/>
      <fo:table-column column-width="0.38in"/>
      <fo:table-column column-width="0.51in"/>
      <fo:table-body>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block></fo:block>  <!-- Just for padding -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-size="10pt" font-weight="bold" >Degree Audit for</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block font-size="10pt" font-weight="bold" ><xsl:value-of select="zOI/PageHeader/Person.dFullName"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block >Major:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block ><xsl:value-of select="zOI/PageHeader/DegreeMajor.Name"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block >Date:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block ><xsl:value-of select="zOI/PageHeader/Root.dCurrentDate"/></fo:block> <!-- XSLT_BuildControl-->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block >Page:</fo:block> <!-- XSLT_BuildControl -->
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
            <fo:block > <!-- XSLT_BuildControl -->
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
   <fo:static-content flow-name="xsl-region-after">
     <fo:block font-size="8pt" >
     </fo:block>
   </fo:static-content>
  
   <fo:flow flow-name="xsl-region-body">
  
     <xsl:apply-templates/>
     <fo:block id="last-page"></fo:block>
  
   </fo:flow>
  
 </fo:page-sequence>
</fo:root> 
</xsl:template>
  
<xsl:template match="GR_DegreeTrack">
  <fo:block font-size="9pt">
 
 
<!-- Only execute this GroupSet section if  DegreeTrack exists in xml. -->
<xsl:if test="DegreeTrack">
  <!-- XSLT_EntityRecur DegreeTrack -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="DegreeTrack">
    <!-- In XSLT_GroupRecur -->
    
    
    <fo:table table-layout="fixed" width="100%" margin-top="0.1in"> <!-- In XSLT_GroupRecur -->
    <fo:table-column column-width="0.36in"/> <!-- This is just for padding -->
    <fo:table-column column-width="7.2in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
        <!-- ** Rpt_Shape Rpt_Shape1 ** -->
        <fo:block  > <!-- XSLT_GroupRecur For Row -->
    
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.13in">
          <fo:table-column column-width="1.35in"/> <!-- This is just for padding -->
          <fo:table-column column-width="2.06in"/>
          <fo:table-column column-width="2.2in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-size="12pt" font-weight="bold" >UNOFFICIAL AUDIT FOR</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-size="12pt" font-weight="bold" ><xsl:value-of select="Person.dFullName"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.05in">
          <fo:table-column column-width="1.38in"/> <!-- This is just for padding -->
          <fo:table-column column-width="0.91in"/>
          <fo:table-column column-width="1.16in"/>
          <fo:table-column column-width="0.91in"/>
          <fo:table-column column-width="2.01in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Date Created:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.wCreatedDate"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Created by:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.wAuditorName"/></fo:block> <!-- XSLT_BuildControl-->
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
    <fo:table-column column-width="0.36in"/> <!-- This is just for padding -->
    <fo:table-column column-width="7.2in"/>
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
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.06in">
          <fo:table-column column-width="1.13in"/> <!-- This is just for padding -->
          <fo:table-column column-width="4.67in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="center" font-size="12pt" font-weight="bold" >This is Not an Official Audit in Any Way</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.3in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.03in"/>
          <fo:table-column column-width="3.45in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Major:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeMajor.Name"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.03in"/>
          <fo:table-column column-width="3.45in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Track:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block border-width="1" ><xsl:value-of select="DegreeTrack.Name"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.03in"/>
          <fo:table-column column-width="1.0in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Catalog Year:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="CollegeYear.Year"/></fo:block> <!-- XSLT_BuildControl-->
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
    <fo:table-column column-width="0.36in"/> <!-- This is just for padding -->
    <fo:table-column column-width="0.0in"/>
    <fo:table-column column-width="7.2in"/>
    <fo:table-body>
      <fo:table-row>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
          <fo:block></fo:block> <!-- Just for padding -->
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
        <!-- ** Rpt_Shape Rpt_Shape4 ** -->
        <fo:block  > <!-- XSLT_GroupRecur For Row -->
    
          <!-- In XSLT_GroupRecur -->
          
          <!-- No Rpt_Shape calling XSLT_BuildCtrlsInRows each line new Table -->
          
          <!-- In XSLT_BuildCtrlsInRows -->
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.35in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="2.81in"/>
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Comprehensive Score:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="StudentMajorDegreeTrack.ComprehensiveTestScore"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Pre-Transfer Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditPreTransferCredits"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="2.81in"/>
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Course Summary:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.wDegreeAuditSatisfiedDescription"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Earned Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditTotalCreditsEarned"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="2.81in"/>
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Cumulative GPA:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.AuditGPA"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Enrolled Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditEnrolledCredits"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="2.81in"/>
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Minimum GPA:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.MinimumGPA"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Developmental Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditDevelopmentalCredits"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="2.81in"/>
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Major GPA:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DegreeTrack.AuditMajorGPA"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Graduation Credits:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditGraduationCredits"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="4.8in"/> <!-- This is just for padding -->
          <fo:table-column column-width="2.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-style="italic" >(Earned + Enrolled - Developmental)</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="1.04in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Classification:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="Student.CurrentLevel"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="4.8in"/> <!-- This is just for padding -->
          <fo:table-column column-width="2.26in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block font-style="italic" >(Does not include Pre-Transfer Credits)</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="0.33in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.54in"/>
          <fo:table-column column-width="1.04in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Anticipated Grad Date:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block ><xsl:value-of select="DC_AnticipatedGraduationDate.Name"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
          <!-- In XSLT_GroupTable -->
          
          
          <fo:block > <!-- XSLT_GroupTable -->
          
          <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
          <fo:table-column column-width="4.68in"/> <!-- This is just for padding -->
          <fo:table-column column-width="1.6in"/>
          <fo:table-column column-width="0.53in"/>
          <fo:table-body>
            <fo:table-row>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block></fo:block>  <!-- Just for padding -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block >Min Credits Required:</fo:block> <!-- XSLT_BuildControl -->
              </fo:table-cell>
              <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                <fo:block text-align="right" ><xsl:value-of select="DegreeTrack.AuditMinimumCreditsRequired"/></fo:block> <!-- XSLT_BuildControl-->
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
          </fo:table>
          
          </fo:block>
          
        </fo:block>
    
        </fo:table-cell>
        <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
        <!-- ** Rpt_Shape Rpt_Shape3 ** -->
        <fo:block  > <!-- XSLT_GroupRecur For Row -->
    
          <!-- In XSLT_GroupRecur -->
          
          <!-- In XSLT_BuildBlockData -->
          
                <fo:block text-align="center" font-size="12pt" font-weight="bold" >Summary Information</fo:block> <!-- XSLT_BuildControl -->
        </fo:block>
    
        </fo:table-cell>
      </fo:table-row>
    </fo:table-body>
    </fo:table>
    
 
<!-- Only execute this GroupSet section if  RequiredGroup exists in xml. -->
<xsl:if test="RequiredGroup">
  <!-- XSLT_EntityRecur RequiredGroup -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="RequiredGroup">
                <!-- In XSLT_GroupTable -->
                
                
                <fo:block > <!-- XSLT_GroupTable -->
                
                <fo:table table-layout="fixed" width="100%" margin-top="0.06in">
                <fo:table-column column-width="0.38in"/> <!-- This is just for padding -->
                <fo:table-column column-width="7.6in"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                      <fo:block></fo:block>  <!-- Just for padding -->
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                      <fo:block font-weight="bold" ><xsl:value-of select="RequiredGroup.wDegreeAuditOL_Value"/></fo:block> <!-- XSLT_BuildControl-->
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
                </fo:table>
                
                </fo:block>
                
 
<!-- Only execute this GroupSet section if  CourseType1or2 exists in xml. -->
<xsl:if test="CourseType1or2">
  <!-- XSLT_EntityRecur CourseType1or2 -->
 
 
  <!-- ENTITY DETAIL -->
 
                            <!-- In XSLT_GroupTable -->
                            
                            
                            <fo:block > <!-- XSLT_GroupTable -->
                            
                            <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
                            <fo:table-column column-width="0.85in"/> <!-- This is just for padding -->
                            <fo:table-column column-width="3.08in"/>
                            <fo:table-column column-width="4.23in"/>
                            <fo:table-body>
                            <xsl:for-each select="CourseType1or2">
                              <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                  <fo:block></fo:block>  <!-- Just for padding -->
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                  <fo:block ><xsl:value-of select="CourseType1or2.dOL_Value"/></fo:block> <!-- XSLT_BuildControl-->
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                  <fo:block ><xsl:value-of select="CourseType1or2.dAuditResult"/></fo:block> <!-- XSLT_BuildControl-->
                                </fo:table-cell>
                              </fo:table-row>
                              </xsl:for-each>
                            </fo:table-body>
                            </fo:table>
                            
                            </fo:block>
                            
</xsl:if>
 
<!-- Only execute this GroupSet section if  RequiredSubGroup exists in xml. -->
<xsl:if test="RequiredSubGroup">
  <!-- XSLT_EntityRecur RequiredSubGroup -->
 
 
  <!-- ENTITY DETAIL -->
 
    <xsl:for-each select="RequiredSubGroup">
                      <!-- In XSLT_GroupTable -->
                      
                      
                      <fo:block > <!-- XSLT_GroupTable -->
                      
                      <fo:table table-layout="fixed" width="100%" margin-top="0.06in">
                      <fo:table-column column-width="0.63in"/> <!-- This is just for padding -->
                      <fo:table-column column-width="7.16in"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                            <fo:block></fo:block>  <!-- Just for padding -->
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                            <fo:block ><xsl:value-of select="RequiredSubGroup.wDegreeAuditOL_Value"/></fo:block> <!-- XSLT_BuildControl-->
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                      
                      </fo:block>
                      
 
<!-- Only execute this GroupSet section if  CourseType3or4 exists in xml. -->
<xsl:if test="CourseType3or4">
  <!-- XSLT_EntityRecur CourseType3or4 -->
 
 
  <!-- ENTITY DETAIL -->
 
                                  <!-- In XSLT_GroupTable -->
                                  
                                  
                                  <fo:block > <!-- XSLT_GroupTable -->
                                  
                                  <fo:table table-layout="fixed" width="100%" margin-top="0.0in">
                                  <fo:table-column column-width="0.85in"/> <!-- This is just for padding -->
                                  <fo:table-column column-width="3.08in"/>
                                  <fo:table-column column-width="4.23in"/>
                                  <fo:table-body>
                                  <xsl:for-each select="CourseType3or4">
                                    <fo:table-row>
                                      <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                        <fo:block></fo:block>  <!-- Just for padding -->
                                      </fo:table-cell>
                                      <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                        <fo:block ><xsl:value-of select="CourseType3or4.dOL_Value"/></fo:block> <!-- XSLT_BuildControl-->
                                      </fo:table-cell>
                                      <fo:table-cell xsl:use-attribute-sets="DefaultCellPadding">
                                        <fo:block ><xsl:value-of select="CourseType3or4.dAuditResult"/></fo:block> <!-- XSLT_BuildControl-->
                                      </fo:table-cell>
                                    </fo:table-row>
                                    </xsl:for-each>
                                  </fo:table-body>
                                  </fo:table>
                                  
                                  </fo:block>
                                  
</xsl:if>
    </xsl:for-each>
</xsl:if>
    </xsl:for-each>
</xsl:if>
    </xsl:for-each>
</xsl:if>
  </fo:block>
</xsl:template>
</xsl:stylesheet>
