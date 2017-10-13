# inspection-sheet-tesseract
基于tesseract的文字识别，字库训练
tesseract测试.bat 用于测试tesseract是否安装配置正确，测试OK，result.txt内会显示图像识别结果


然后根据需求训练语言文件，
dict.txt为字符集，同一个字符可以重复出现，表示这个字符出现频率高
part.words_list为词汇集，可以提高词汇的识别率

在font_properties内设置识别字体的属性
第一个字段为字体名称，名称中不能有空格，名称可以任意，但建议尽量贴近字体在操作系统上的名称，后面五个字段分别表示:
该字体是否有斜体
该字体是否有粗体
该字体是否有无衬线体
该字体是否有衬线体
该字体是否有哥特体
例：
FreeMono 0 0 0 0 0  

编辑“1.图像与BOX文件生成.bat” ，设置字体名称

然后依次执行1~10的bat文件，最后生成的part.traineddata就是训练好的语言文件
将part.traineddata拷贝到C:\\Program Files (x86)\\Tesseract-OCR\\tessdata目录里面后，就可以在命令行中使用“-l part”来使用语言文件
