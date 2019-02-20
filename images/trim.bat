del *crop* /a /s
for %%d in (*.pdf) do pdfcrop %%d
for %%i in (*.jpg) do magick %%i -trim %%~ni-crop%%~xi
for %%i in (*.png) do magick %%i -trim %%~ni-crop%%~xi
