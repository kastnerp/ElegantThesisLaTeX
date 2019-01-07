del *crop* /a /s
@for /R %%D in (*.pdf) do pdfcrop "%%D"
@for /R %%I in (*.jpg) do magick "%%I" -trim "%%~nI-crop%%~xI"
@for /R %%I in (*.png) do magick "%%I" -trim "%%~nI-crop%%~xI"
