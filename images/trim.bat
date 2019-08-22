del *crop* /a /s

for /r %%a in (.) do (
  pushd %%a
  (
    for %%i in (*.pdf) do pdfcrop %%i
	for %%j in (*.jpg) do magick %%j -trim %%~nj-crop%%~xj
	for %%k in (*.png) do magick %%k -trim %%~nk-crop%%~xk 
	)
  popd 
  )