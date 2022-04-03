//
//  PlaygroundChapter+Manifest.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/4/3.
//

import Foundation

extension PlaygroundChapter {
    class Manifest: File_Plist {

        /// 创建一个配置文件，名字是 Manifest ，扩展名是 .plist 。
        override init(name: String = "Manifest", extension: String = ".plist") {
            super.init(name: name, extension: `extension`)
        }
        
        /// **「Must」** 一个字符串，提供 **PlaygroundChapter** 的名称。
        ///
        /// 必须填写。
        let name: String = ""

        /// **「Must」** 一个字符串数组，来对 **Chapter** 中的每一个 **Page** 排序，**Page** 可以是 **PlaygroundPage** 或者 **CutscenePage**。
        ///
        /// 必须填写。
        let Pages: Array<String> = []
    }
}
