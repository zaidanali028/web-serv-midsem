<?xml version="1.0" encoding="UTF-8"?>
<!-- this xslt file is dependent on the xml file  (1. facebook_data.xml) for the transformation -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Facebook Posts</title>
      </head>
      <body>
        <h1>Facebook Posts</h1>
        <xsl:apply-templates select="/facebook/posts/post"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="post">
    <div>
      <h2>User ID: <xsl:value-of select="@userId"/></h2>
      <p><xsl:value-of select="content"/></p>
      <h3>Likes: <xsl:value-of select="count(likes/like)"/></h3>
      <h3>Comments:</h3>
      <ul>
        <xsl:for-each select="comments/comment">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ul>
      <hr/>
    </div>
  </xsl:template>
</xsl:stylesheet>
