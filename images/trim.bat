del *crop* /a /s
for %%d in (*.*) do pdfcrop %%d
for %%i in (*.png) do magick %%i -trim %%~ni-crop%%~xi
for %%i in (*.jpg) do magick %%i -trim %%~ni-crop%%~xi
