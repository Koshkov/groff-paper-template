# Groff APA Like Template

This is a simple template for creating APA like papers using the Groff MS 
macros. It includes a simple paper template, some useful math symbols, and
a template for APA style in-text citations. 

# Compiling Documents

Compiling documents is fairly straight forward. I generally run groff with
a few basic preprocessors. The base template requires both eqn and refer to 
properly compile.

`groff -Re -ms paper.ms -Tpdf > paper.pdf`

# Editing the Document Format

This template comes with two tmac files located in the macro directory. You
can adjust the typeface, font-size, and line spacing in `./macros/paper.tmac`.

You can create as many macro packages/files as you need. Just make sure to 
source them at the top of the document using the .so command.

# Bibliography Management 

I have also provided a simple template for bibliography management. If you want
to learn more about how bibliographies with Groff, you can read the man page for 
[refer](https://preciouschicken.com/blog/posts/no-tears-references-groff/). 

Also, this [no-tears guide](https://preciouschicken.com/blog/posts/no-tears-references-groff/)
to adding references in Groff by Precious Chicken is fantastic.
