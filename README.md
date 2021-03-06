## CodeByAI
一个可以把设计稿精确转换为移动端布局代码的Sketch智能插件，适用于RN/Android项目, 以及移动端React/Vue项目. 本插件生成的代码媲美手写，可大幅度提高移动端页面开发效率。 [中文文档](https://github.com/laotian/CodeByAI/wiki/CodeByAI中文使用文档)  

A Sketch smart plug-in that can accurately convert the design draft into mobile layout code, suitable for RN/Android projects, and mobile React/Vue projects. The code generated by this plug-in is comparable to handwriting, which can greatly improve the efficiency of mobile page development.
 
## Special feature
* Intelligent: The layout elements are grouped reasonably, the flexible layout supports automatic screen adaptation; the name of the control can be customized or automatically generated (translated) according to the content, easy to understand;
* High performance: less nested layout and high rendering performance.
* Extensible: native support for picture/text/text input/View/touch background switching; supports secondary development, and the generated code can be replaced as the company's component
* Visualization: You can view the actual running effect of the code, and developers can easily select part/full page code into the project.

## Demo
[Demo online](https://codebyai.com/static/demo/index.html)  

[Demo sketch file download](https://codebyai.com/static/demo.sketch) 

After entering the page, select "Code Type" in the upper right corner to view a screenshot of the running effect.  
Click to select a single element or select multiple elements, and view the corresponding code in the code area in the lower right corner of the page; to facilitate developers to copy by category, the code area is divided into three TABs, picture guide package, VIEW layout, style information.  
"Custom" refers to the secondary development and replacement of the company's components based on the code generated by the standard. 
In the RN customization mode, select the switch/checkbox interactive component to view the corresponding component information in the code area. The DEMO demo only includes customization of RN components, which are supported by vue/react/android.

## Plugin usage
1. This plugin supports the minimum version of Sketch as 52.5, recommended version 60; [download plugin](https://github.com/laotian/CodeByAI/archive/master.zip) and unzip it, open `CodeByAI.sketchplugin`;
2. Open the design draft, select the artboard to be exported (multiple selections are supported), execute the menu Plug-in/CodeByAI/Export Code and Specification, select the export code type and click Export.
3. Open the generated index.html to view the specifications and code. The complete page code and resources are located in the "CodeByAI" folder

## Design specifications
Compliance with design specifications can guarantee the quality of the generated code.  
[Design Specification](https://github.com/laotian/CodeByAI/wiki/Design-Specification)


## Secondary development
The plug-in can natively support picture/text/text input/View/touch background switching; for extended functions,
CodeByAI provides the secondary development SDK, which can realize the replacement of the company's custom components.

[CodeByAI-SDK](https://github.com/laotian/codebyai-sdk)

## Thanks
- The front-end of the plugin is based on [SketchMeasure](https://github.com/utom/sketch-measure)
- Designer [@leyu123](https://github.com/leyu123)

## feedback
- [ISSUE](https://github.com/laotian/CodeByAI/issues/new)
- Email: tianlupan@126.com
