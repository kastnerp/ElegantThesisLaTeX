param(
    [string] = "thesis.tex"
)
Continue = "Stop"
 = Split-Path -Parent System.Management.Automation.InvocationInfo.MyCommand.Path
Set-Location 
if (-not (Get-Command latexmk -ErrorAction SilentlyContinue)) {
    Write-Error "latexmk not found. Install latexmk or use compile.bat."
    exit 1
}
latexmk -lualatex -interaction=nonstopmode -synctex=1 -file-line-error -halt-on-error -use-makeindex 