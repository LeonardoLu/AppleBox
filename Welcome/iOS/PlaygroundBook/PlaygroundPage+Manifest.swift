//
//  PlaygroundPage+Manifest.swift
//  Welcome
//
//  Created by lujunhui.2nd on 2022/4/3.
//

import Foundation

extension PlaygroundPage {
    class Manifest: File_Plist {
        
        /// 创建一个配置文件，名字是 Manifest ，扩展名是 .plist
        override init(name: String = "Manifest", extension: String = ".plist") {
            super.init(name: name, extension: `extension`)
        }

        /// **「Optinal」** 一个字典，描述用户在 Page 之间复制内容时阅读的说明。
        var CodeCopySetup: String = ""

        ///  **「Must」** 一个布尔值，用于控制实时视图的初始大小。当设置为 true（YES）时，会填充整个视图区域。
        let LiveViewEdgeToEdge: Bool = true

        /// **「Must」** 一个字符串，描述刚打开 Page 时，实时视图的状态。
        ///
        /// 设置为 **VisibleByDefault** 时，默认显示实时视图；如果设置为 **HiddenByDefault** 则隐藏实时视图，直至用于运行 Page 上的代码。（即只展示代码编辑区域。）
        let LiveViewMode: String = "VisibleByDefault"

        /// **「Must」** 一个字符串，用于指定 Playgrounds 展示给用户的 Page 的名称。
        let Name: String = ""

        /// **「Optinal」** 一个字符串，指定是否在 main.swift 的每个语句傍边显示运行的 Swift 结果。默认是 "Normal"，即显示结果。「显示语句结果」会极大地约束 Playgrounds 的性能，对于需要性能的任务都应当设置为 "Off"，否则会直接无法运行。
        ///
        /// 设置为 "Normal" 时会显示结果，"Off"则不会。
        var PlaygroundLoggingMode: String = "Off"

        /// **「Optinal」** 一个字符串，用于引用图像文件，该文件会在用户点击 **run** 之前在实时视图区域居中显示且不会缩放。
        ///
        /// 这个图像文件可以在 Book 中的任何 Resources 文件夹中。
        var PosterReference: String = ""

        /// **「Optinal」** 一个字符串数组，用来控制显示在输入法快捷栏中的来自 Moudle 的代码补全或提示。在配置文件中，它是一个名字为  `__AutoImportedModules` 的数组。
        ///
        /// 每个提示的语法于 main.swift 文件中的代码补全定界符（code-completion delimiter）中使用的语法相同。
        var UserModuleCodeCompletionDirectives: Array<String> = []

        /// **「Optinal」** 一个字符串，指定打开这个 Page 时激活的 Swift 文件。
        ///
        /// 设置为相对于 Book 中 Contents 文件夹目录的相对路径。
        var UserModuleSourceFileToActivate: String = ""

        /// **「Optinal」** 一个字符串数组，指定 Page 打开后，需要打开的 Swift 文件。元素顺序决定了 Playgrounds 界面中文件的显示顺序。
        var UserModuleSourceFilesToOpen: Array<String> = []
    }
}
