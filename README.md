# inspection-sheet-tesseract
基于tesseract的文字识别，字库训练
tesseract测试.bat 用于测试tesseract是否安装配置正确，测试OK，result.txt内会显示图像识别结果

运行环境windows7 64bit
依赖库：
PIL
pytesseract
tesseract-ocr

然后根据需求训练语言文件，
dict.txt为字符集，同一个字符可以重复出现，表示这个字符出现频率高
part.words_list为词汇集，可以提高词汇的识别率
part.unicharambigs为易混淆词汇，该文件格式如下所示，并且必须以一个空白行结尾
0表示非强制的替换，提示 tesseract 的分段检索，如果将 source 替换成 target，能够将原本的词汇从非词典中词汇变成词典词汇，那就继续下去。 在分类时，一个能够通过替换变成另一个词典中词汇的词汇，将不会被用于训练。
1	强制替换，tesseract将始终把匹配到的 source 替换成 target.
‘’ ” 1       强制替换，将‘’始终替换为”
m rn 0 		非强制替换，如果rn能够构成字典中的词汇，将m替换rn，否则不替换
iii m 0		非强制替换，如果m能够构成字典中的词汇，将iii替换m，否则不替换

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
