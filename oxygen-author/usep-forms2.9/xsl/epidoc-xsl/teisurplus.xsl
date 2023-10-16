<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: teisurplus.xsl 2090 2013-10-24 15:23:22Z gabrielbodard $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:t="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="t" 
                version="2.0">
  <!-- Contains template for surplus -->
   
   <xsl:template match="t:surplus">
       <xsl:param name="parm-edn-structure" tunnel="yes" required="no"></xsl:param>
       <xsl:choose>
           <xsl:when test="$parm-edn-structure = 'rib'">
               <xsl:text>&lt; </xsl:text><xsl:apply-templates/><xsl:text> &gt;</xsl:text>
           </xsl:when>
           <xsl:otherwise>
               <xsl:text>{</xsl:text>
               <xsl:apply-templates/>
               <!-- cert-low template found in tpl-certlow.xsl -->
               <xsl:call-template name="cert-low"/>
               <xsl:text>}</xsl:text>
           </xsl:otherwise>
       </xsl:choose>
   </xsl:template>

</xsl:stylesheet>