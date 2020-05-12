# CodeByAI
A plug-in that can accurately convert Sketch design drafts into front-end code.  
Currently supported code type is RN / Android, and iOS / H5 will be supported in the future.  
The generated code style is close to the developer's handwritten code and supports automatic screen adaptation.   
You can easily select part of the code or the entire page to the project, greatly improving the efficiency of page development.  
The plug-in is based on [SketchMeasure](https://github.com/utom/sketch-measure), designer can maintain your usage habits.

# Download
1. [Download](https://github.com/laotian/CodeByAI/archive/master.zip) the plugin and unzip.
2. Open `CodeByAI.sketchplugin`

# Code Export
1. Copy the artboards to be exported to the newly created document, because the plug-in may slightly modify the source file during the export process.  
2. Select the artboards in the new document (multiple selections are supported), execute the menu Plug-in / CodeByAI / Export Code and Specification, pay attention to check the "Export Code" on the panel.  


# Code View
After export, server will generate the code running effect diagram. After about one minute, you can view the code and running effect diagram.  
Open the generated index.html, there will be a code type drop-down box at the top of the page, the default is "Code hidden", it keeps the same function as SketchMeasure
You can choose RN / Android, the page will switch to the code running renderings. If there is no problem with the page, you can view the corresponding code on the right by clicking on the selected page element or frame selection element.
If "RN" is selected, there will be three TABs on the right bottom corner, including Import / Layout / StyleSheet; If "Android" is selected, only the Layout tab.
You can paste the code to your project, usually only requires a small amount of modification.  
The complete page code and resources are located in the "CodeByAI" folder.  


# Designer Best Practices
* The plug-in supports automatic cutting of picture type elements (such as compound paths) (without leaving blank). It is better to cut the picture manually.
* If the slice is a separate layer, the slice layer should be placed above the slice layer.
* The layer name of the picture / rectangle with background or border will be included in the generated code as the control ID. Please use meaningful names for these layers. Chinese and English are best.
* Do not overlap elements, do not exceed the artboard, and do not have invalid elements (such as completely covered)
* Do not use external shadows

# Feedback
Email: tianlupan@126.com

# 相关链接
- [CodeByAI中文说明](http://www.sketch.codes)
- [SketchMeasure中文说明](https://oursketch.com/plugin/sketch-measure)
