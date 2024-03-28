# Microblogging XML to HTML Transformer

This project contains an XML document representing microblogging data for GROUP(3) - WEB SERVICES AND SEMANTIC LANGUAGE CLASS, an XSLT stylesheet to transform the XML data into HTML, and three XPath expressions to query the XML data.


## Files

1. `facebook_data.xml`: XML data file containing sample microblogging posts, comments,USERS & likes.
2. `facebook_transform.xslt`: XSLT stylesheet file for transforming the XML data into HTML.
3. `xpath_expressions.txt`: Text file containing three(3) standard XPath expressions used for querying the XML data.

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

1. Fork this repo to your github account
2. Clone it from your repository 
3. Utilize it locally or in any other form you prefer

## License

This project is licensed under the [MIT License](LICENSE).
