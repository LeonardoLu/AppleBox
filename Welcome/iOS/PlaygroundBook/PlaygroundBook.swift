//
//  PlaygroundBook.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import Foundation

class PlaygroundBook: File_Folder {

    /// 创建一个 **PlaygroundBook** 文件夹，它的名字可以是任何合法的文件名，扩展名必须是 `.playgroundbook`。
    override init(name: String, extension: String = ".playgroundbook") {
        super.init(name: name, extension: `extension`)
    }

    /// 一个存放 **PlaygroundBook** 所有资源的文件夹，名字是 contents。
    let contents = PlaygroundBook.Contents(name: "contents")
}

extension PlaygroundBook{
    class Contents: File_Folder {

        /// 一个名字为 Chapter 的文件夹，其中存放 **PlaygroundChapter** 文件。
        let Chapters = File_Folder(name: "Chapters")

        /// 一个Plist 配置文件，对这个 **PlaygroundBook** 进行了设置。
        ///
        /// 这个文件的全称必须是 **Manifest.plist** 。
        let Manifest = PlaygroundBook.Manifest()

        /// 一个名字为 Modules 的文件夹，用来存放用户无法编辑的 **PlaygroundModule** 。
        var Modules = File_Folder(name: "Modules")

        /// 一个名字为 UserModules 的文件夹，用来存放用户可以编辑的 **PlaygroundModule** 。
        let UserModules = File_Folder(name: "UserModules")

        /// 一个名字为 PrivateResources 的文件夹，用来存放用户无法编辑的非代码文件。
        var PrivateResources = File_Folder(name: "PrivateResources")
    }
}




