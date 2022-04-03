//
//  PlaygroundChapter.swift
//  Welcome
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import Foundation

class PlaygroundChapter: File_Folder {

    /// 创建一个 **PlaygroundChapter** 文件夹，它的名字可以是任何合法的文件名，扩展名必须是 `.playgroundchapter` 。
    override init(name: String, extension: String = ".playgroundchapter") {
        super.init(name: name, extension: `extension`)
    }

    /// 一个文件夹，其中包含了 **PlaygrounrdPage** 和 **CutscenePage** 。
    let Pages = File_Folder(name: "Pages")

    /// 一个Plist 配置文件，对这个 Chapter 进行了设置。
    /// 
    /// 这个文件的全称必须是 **Manifest.plist**
    let Manifest = PlaygroundBook.Manifest()
    
}
