# Microblogging XML to HTML Transformer

This project contains an XML document representing microblogging data, an XSLT stylesheet to transform the XML data into HTML, and three XPath expressions to query the XML data.

## Files

1. `facebook_data.xml`: XML data file containing sample microblogging posts, comments, and likes.
2. `facebook_transform.xslt`: XSLT stylesheet file for transforming the XML data into HTML.
3. `xpath_expressions.txt`: Text file containing three standard XPath expressions used for querying the XML data.

## Usage

To use this project:

1. Ensure you have an XML parser and XSLT processor installed on your system.
2. Apply the XSLT transformation using the provided XSLT stylesheet and XML data file.
3. Optionally, use the provided XPath expressions to query the XML data.

## XPath Expressions

1. `/facebook/posts/post/content`: Retrieve the content of all posts.
2. `count(/facebook/posts/post/likes/like)`: Count the number of likes for each post.
3. `/facebook/posts/post[@id='4']/comments/comment/../@userId`: Find the names of users who commented on post with id="4".

## GitHub Setup

Set up your GitHub account to display the results. Create a repository and upload the XML data, XSLT stylesheet, and any other necessary files. You can then share the repository link with others to access the transformed HTML output.

## License

This project is licensed under the [MIT License](LICENSE).
