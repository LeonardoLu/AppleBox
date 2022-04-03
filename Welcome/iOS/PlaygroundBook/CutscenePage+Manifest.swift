//
//  CutscenePage+Manifest.swift
//  Welcome
//
//  Created by lujunhui.2nd on 2022/4/3.
//

import Foundation

extension CutscenePage {
    class Manifest: File_Plist {

        /// 创建一个配置文件，名字是 Manifest ，扩展名是 .plist
        override init(name: String = "Manifest", extension: String = ".plist") {
            super.init(name: name, extension: `extension`)
        }

        /// **「Must」** 一个字符串，包含 **CutscenePage** 的动画的 HTML 文件的路径。该路径是 **CutscenePage** 的 PrivateResources  文件夹目录下的相对路径。
        let CutsceneReference: String = ""

        /// **「Must」** 一个字符串，决定 Playgrounds 中显示的 Cutscene 的名称。
        let Name: String = ""
    }
}
