del *crop* /a /s
for %%d in (*.*) do pdfcrop %%d
for %%i in (*.*) do magick %%i -trim %%~ni-crop%%~xi
