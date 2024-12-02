\" Author: Mathieu Landretti 
\" Last Updated: 2024-09-08

.so ./macros/paper.tmac
.so ./macros/math.tmac
.so ./macros/utf8.tmac

\" Additional definitions for math documents
\".EQ 
\"delim $$

\"define forall `\[fa]`
\"define exists `\[te]`
\"define implies `\[rA]`
\"define in `\[mo]`

\"define RR `bold R`
\"define NN `bold N`
\"define CC `bold C`
\".EN

\" Styles for in-text citations
.R1
database bib
accumulate
move-punctuation 
label "(A.n|Q) ', ' (D) (P?', pp. 'P:'')"
bracket-label " (" ) "; "
sort A+Q
no-label-in-reference 
.R2

.TL
Groff APA Style Paper Template
.AU
Mathieu Landretti
.AI
School of Hard Knocks
.AB
This is a simple template for creating ``APA like'' papers using the Groff MS 
macros. It includes a simple paper template, some useful math symbols, and
a template for APA style in-text citations. 
.AE
.DA
.NH 1
Compiling Documents
.LP
Compiling documents is fairly straight forward. I generally run groff with
a few basic preprocessors. This document requires both eqn and refer to 
properly compile.
.CD
groff -Re -ms paper.ms -Tpdf > paper.pdf
.NH 1
Editing the Document Format
.LP
This template comes with two tmac files located in the macro directory. You
can adjust the typeface, font-size, and line spacing in ./macros/paper.tmac.
.PP
You can create as many macro packages/files as you need. Just make sure to 
source them at the top of the document using the .so command.
.[ \" Example of an in-intext citation
roff:2023
.]
