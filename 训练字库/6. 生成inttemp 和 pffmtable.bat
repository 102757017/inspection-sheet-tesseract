echo "��ӭ!"
D:
cd %~dp0
echo Run Tesseract for Training..  
"C:\Program Files (x86)\Tesseract-OCR\mftraining.exe" -F "%~dp0\font_properties" -U "%~dp0\unicharset" -O part.unicharset "%~dp0\part.no.tr" 