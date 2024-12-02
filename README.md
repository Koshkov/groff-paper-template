# Groff APA Like Template

This is a simple template for creating APA like papers using the Groff MS 
macros. It includes a simple paper template, some useful math symbols, and
a template for APA style in-text citations. 

## Compiling Documents

Compiling documents is fairly straight forward. I generally run groff with
a few basic preprocessors. The base template requires both eqn and refer to 
properly compile.

`groff -Re -ms paper.ms -Tpdf > paper.pdf`

## Editing the Document Format

This template comes with two tmac files located in the macro directory. You
can adjust the typeface, font-size, and line spacing in `./macros/paper.tmac`.

You can create as many macro packages/files as you need. Just make sure to 
source them at the top of the document using the .so command.

## Extra Math Definitions

I have added some extra definitions for eqn. The default package does not
provide some basic symbols including set membership, for all, and implies.
These definitions are located at the top of the template in an `.EQ`/`.EN` 
block.

```
.EQ 
delim $$

define forall `\[fa]`
define exists `\[te]`
define implies `\[rA]`
define in `\[mo]`

define RR `bold R`
define NN `bold N`
define CC `bold C`
.EN
```
## UTF-8 Character Support 

I have added a macro file called `utf8.tmac` which contains some LaTeX 
style macros for basic UTF-8 characters. A complete list of UTF-8 chars supported
by groff can be found [here](https://man.archlinux.org/man/groff_char.7.en).

You can define your own macro as follows:

```
.ds <Macro> <\[UTF]>
```

## Bibliography Management 

I have provided a simple template for bibliography management. If you want
to learn more about how bibliographies with Groff, you can read the man page for 
[refer](https://preciouschicken.com/blog/posts/no-tears-references-groff/). 

Also, this [no-tears guide](https://preciouschicken.com/blog/posts/no-tears-references-groff/)
to adding references in Groff by Precious Chicken is fantastic.

## TODO

I will fork the tamc file from refer and change the end bibliography to follow
APA standards.
