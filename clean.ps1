# ------------------------------------------------------------------------------
# Script: Clean-Temporary-Files.ps1
# Author: Jonas Gröger <jonas.groeger@gmail.com>
# Date: 12.04.2014
# Keywords: LaTeX, Clean, Delete, Remove, Temporary, Files
# Comments: Removes temporary files created by LaTeX etc. You can tweak it by
#           adding extensions or specific files.
# ------------------------------------------------------------------------------

Param(
    [String] $Folder = $PSScriptRoot # By default, remove from current directory
)

$files_to_delete = @(
    "*.aux",
	"*.acn",
	"*.acr",
	"*.alg",
    "*.bbl",
    "*.bcf",
    "*.blg",
    "*.brf",
    "*.idx",
    "*.ilg",
    "*.ind",
	"*.ist",
	"*.glo",
	"*.glg",
    "*.lof",
    "*.log",
    "*.lol",
    "*.lot",
    "*.lpr",
	"*.nav",
    "*.nlo",
    "*.nls",
    "*.out",
	"*.gls",
	"*.slg",
	"*.syg",
	"*.syi",
	"*.snm",
	"*.ttt",
	"*.fff",
    "*.pyg",
    "*.run.xml",
    "*.synctex",
    "*.synctex.gz"
    "*.tdo",
    "*.toc"
	"*.bbl.bak"
	"*.lof.bak"
	"*.mw"
	"*.tex.bak"
	"*.bib.bak"
	"*.synctex(busy)"
)

$n_files_removed = 0

Get-ChildItem $Folder -Recurse -Include $files_to_delete | foreach ($_) {
    Write-Host "Removing $($_ | Resolve-Path -Relative)"
    Remove-Item $_.FullName
    $n_files_removed++
}

if($n_files_removed -eq 0) {
    Write-Host "No files removed from: $Folder"
} else {
    Write-Host "$n_files_removed files removed from: $Folder"
}
