# About

Fork of the ShareLateX version of the [Friggeri CV](https://www.sharelatex.com/templates/cv-or-resume/fancy-cv) from Adrien Friggeri changed to render in A4 paper format. There is also a new option `nocolors` to disable use of colors in section headers.

![](samples/cv.png?raw=true)

You need

* TikZ,
* XeTex,
* fontspec
* biblatex and
* textpos

to build the CV.

## Options

* `print`: renders in black and white, and reverts the header to dark on light
* `nocolors`: no colors in section headers (but still use dark header)

    ![](samples/cv_nocolors.png?raw=true)