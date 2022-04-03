//
//  Playground+Book.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import Foundation

extension PlaygroundBook {
    class Manifest: File_Plist {

        /// 创建一个配置文件，名字是 Manifest ，扩展名是 .plist
        override init(name: String = "Manifest", extension: String = ".plist") {
            super.init(name: name, extension: `extension`)
        }
        
        /// **「Must」** 一个索引并排序 **PlaygroundBook** 的数组。
        ///
        /// 每一个字符串元素都代表一个 `PlaygroundChapter` 的完整文件名，例如 *First.playgroundchapter* 。
        ///
        /// 必须填写。
        let Chapters: Array<String> = []

        /// **「Must」** 一个字符串，用来从其他 **PlaygroundBook** 之中识别这本 Book 和作者。
        ///
        /// 必须是反向 DNS （reverse-DNS）的形式，并且应该使用自己或组织的域名（domain）。
        /// 例如：你拥有 example.com，那么就可以设置成 *com.example.mybook*
        ///
        /// 必须填写。
        let ContentIdentifier: String = "com.example.mybook"

        /// **「Must」** 一个字符串，标识这个 **PlaygroundBook** 的版本。
        ///
        /// 该字符串是能由数字和英文句号组成，例如：1.1.1。
        ///
        /// 当更新 Book 时，应当增加版本号。
        ///
        /// 必须填写
        let ContentVersion: String = "0.0.1"

        /// **「Must」** 一个字符串，指定这个 **PlaygroundBook** 的最低支持的 iOS 版本。
        ///
        /// 使用 ios 作为版本号的前缀。例如：iOS 15.4 的版本字符串是 ios15.4。
        ///
        /// 必须填写。
        let DeploymentTarget: String = "ios15.4"

        /// **「Must」** 一个语言标识符，指定 **PlaygroundBook** 的默认语言和地区。
        ///
        /// 更多信息可以查看 Language ID 和 CFBundleDevelopmentRegion 。
        ///
        /// 必须填写。
        let DevelopmentRegion: String = "en"

        /// **「Optinal」** 一个字符串，包含对 `.png` 文件的引用地址，该文件储存在和该文件同目录下的名为 `Resource` 的文件夹中，该文件将作为 **PlaygroundBook** 的封面使用。
        ///
        /// 封面必须是长宽比为 4:3 的图像。推荐尺寸为 400x300 像素。
        ///
        /// 可选填写。
        var ImageReference: String = "icon.png"

        /// **「Must」** 一个字符串，提供 **PlaygroundBook** 的名称。
        ///
        /// 这个名称会显示在 Playgrounds 中呈现给用户。
        ///
        /// 必须填写。
        let Name: String = "MyBook"

        /// **「Must」** 一个字符串，描述了 **PlaygroundBook** 的书本格式（Swift Playground book format）。例如：7.0
        ///
        /// 必须填写。
        let Version: String = "7.0"

        /// **「Optinal」** 一个字符串，指定了 **PlaygroundBook** 使用的 Swift 语言版本。默认是 5.0。
        ///
        /// 可选填写
        var SwiftVersion: String = "5.1"

        /// **「Optinal」** 一个字符串，指定 **PlaygroundBook** 的最低运行的 Playgrounds 版本。默认是 1.2 。
        ///
        /// 可选填写。
        var MinimumSwiftPlaygroundsVersion: String = "3.1"

        /// **「Must」** 一个字符串，用于确定用户对 **PlaygroundBook** 中用户可编辑模块的控制程度。
        ///
        /// - Full ：用户可以根据需要添加和删除模块和代码。
        /// - Limited ：用户不可移除（nonremovable）。
        /// - Disable ：没有可用的用户模块。
        ///
        /// 必须填写。
        ///
        /// > Tip: 这个属性从 Playgrounds 3 开始使用。
        let UserMouduleModel: String = "Full"
    }
}
