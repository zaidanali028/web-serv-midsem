
<?xml version="1.0" encoding="UTF-8"?>
<!-- Declaration of the XML version and encoding used -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Start of XSLT stylesheet with version 1.0 and namespace declaration -->
  <xsl:template match="/facebook">
    <!-- Template to match the root node of the XML document -->
    <html>
      <!-- Start of HTML document -->
      <head>
        <!-- HTML head section -->
        <title>Facebook Posts</title>
        <!-- Title of the HTML document -->
      </head>
      <body>
        <!-- HTML body section -->
        <h1>Facebook Posts</h1>
        <!-- Heading for Facebook Posts -->
        <xsl:apply-templates select="/facebook/posts/post"/>
        <!-- Apply transformation templates to each 'post' element under '/facebook/posts/post' -->
      </body>
    </html>
    <!-- End of HTML document -->
  </xsl:template>
  
  <xsl:template match="post">
    <!-- Template to match each 'post' element -->
    <div>
      <!-- Start of a div element -->
      <h2>User ID: <xsl:value-of select="@userId"/></h2>
      <!-- Heading displaying the user ID -->
      <p><xsl:value-of select="content"/></p>
      <!-- Paragraph displaying the content of the post -->
      <h3>Likes: <xsl:value-of select="count(likes/like)"/></h3>
      <!-- Heading displaying the number of likes -->
      <h3>Comments:</h3>
      <!-- Heading indicating the start of comments section -->
      <ul>
        <!-- Start of an unordered list -->
        <xsl:for-each select="comments/comment">
          <!-- Loop through each 'comment' element under 'comments' -->
          <li><xsl:value-of select="."/></li>
          <!-- List item displaying the comment content -->
        </xsl:for-each>
        <!-- End of for-each loop -->
      </ul>
      <!-- End of unordered list -->
      <hr/>
      <!-- Horizontal line to separate each post -->
    </div>
    <!-- End of div element -->
  </xsl:template>
  <!-- End of template to match 'post' elements -->
</xsl:stylesheet>
<!-- End of XSLT stylesheet -->