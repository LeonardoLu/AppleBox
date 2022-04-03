//
//  PlaygroundPage.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/4/3.
//

import Foundation

class PlaygroundPage: File_Folder {

    /// 创建一个 PlaygroundPage 文件夹，它的名字可以是任何合法的文件名，扩展名必须是 .playgroundpage。
    override init(name: String, extension: String = ".playgroundpage") {
        super.init(name: name, extension: `extension`)
    }

    /// 一个 swift 代码文件，用户通过编写这个文件来改变 Page 的运行内容。
    ///
    /// 每一个 **PlaygroundPage** 都需要这个文件，Playground App 会把它当作一般的 swift 代码文件，当用户点击 **run** 后，就会执行这个文件中的内容。
    let main = File_Swift(name: "main")

    /// 一个 Swift 代码文件，能够向 Page 提供一个始终展示的界面。
    ///
    /// 当你需要一个始终显示的界面时，就需要添加这个文件，这个文件会在 **PlaygroundPage** 刚打开时就执行。
    var LiveView = File_Swift(name: "LiveView")

    /// 一个 Plist 配置文件，对这个 **PlaygroundPage** 进行了设置。
    /// 
    /// 这个文件的全称必须是 **Manifest.plist**
    let Manifest = PlaygroundPage.Manifest()

}
