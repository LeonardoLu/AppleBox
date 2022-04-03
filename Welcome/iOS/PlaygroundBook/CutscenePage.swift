//
//  CutscenePage.swift
//  Welcome
//
//  Created by lujunhui.2nd on 2022/4/3.
//

import Foundation

class CutscenePage: File_Folder {
    
    /// 创建一个 **CutscenePage** 文件夹，它的名字可以是任何合法的文件名，扩展名必须是 .cutscenepage。
    override init(name: String, extension: String = ".cutscenepage") {
        super.init(name: name, extension: `extension`)
    }

    /// 一个Plist 配置文件，对这个 **CutscenePage** 进行了设置。
    ///
    /// 这个文件的全称必须是 **Manifest.plist**
    let Manifest = CutscenePage.Manifest()

    /// 一个文件夹，存放了 **CutscenePage** 所需要的静态网页资源。
    let PrivateResources = File_Folder(name: "PrivateResources")
}
