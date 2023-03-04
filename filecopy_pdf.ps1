# Set the source and destination paths
$sourcePath = "/Users/mathooshanthayaparan/Documents”
$destinationPath = "/Users/mathooshanthayaparan/Desktop/Class_Work"

# Get the PDF and DOCX files from the source directory
$pdfFiles = Get-ChildItem -Path $sourcePath -Filter "*.pdf"
$docxFiles = Get-ChildItem -Path $sourcePath -Filter "*.docx"

# Copy the PDF and DOCX files to the destination directory
foreach ($pdfFile in $pdfFiles) {
    $destinationFilePath = Join-Path -Path $destinationPath -ChildPath $pdfFile.Name
    Copy-Item -Path $pdfFile.FullName -Destination $destinationFilePath -Force
}
foreach ($docxFile in $docxFiles) {
    $destinationFilePath = Join-Path -Path $destinationPath -ChildPath $docxFile.Name
    Copy-Item -Path $docxFile.FullName -Destination $destinationFilePath -Force
}
# Output a message indicating that the copy operation is complete
Write-Output "PDF and DOCX files copied to $destinationPath"
