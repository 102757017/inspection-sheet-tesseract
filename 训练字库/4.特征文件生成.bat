echo "»¶Ó­!"
D:
cd %~dp0

echo Run Tesseract for Training..  
"C:\Program Files (x86)\Tesseract-OCR\tesseract.exe" "%~dp0\part.no.tif" "%~dp0\part.no" box.train