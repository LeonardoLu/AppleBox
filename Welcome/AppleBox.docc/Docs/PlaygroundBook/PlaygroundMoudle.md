# ``Welcome/PlaygroundMoudle``

@Metadata {
    @DocumentationExtension(mergeBehavior: override)
}

使代码在多个 **PlaygroundChapter** 之间使用，以此展示可复用代码的价值，提高代码利用率。


## Overview

代码文件在 **PlaygroundBook** 中的位置，决定了其他资源能否访问到这个代码文件。例如每个 **PlaygroundPage** 中的 `main.swift` 的文件都是独立的。如果它们有需要共享部分代码，那么就建议将这些代码放在 **PlaygroundMoudle** 。

**PlaygroundMoudle** 将对当前层级和以下的目录分享自己的代码。如果你熟悉 Framework ，那么可以将它看作一个 Framework 。

> Note: 你需要将需要对外使用的接口标注 **Public** ，否则无法访问（正常调用）。

- 专用模块（Private Modules）：用户无需检查或编辑的代码。在这些 **PlaygroundMoudle** 中定义的公共 API 和文档仍然可供用户使用。将这些 **PlaygroundMoudle** 放在 `.playgroundbook/Contents/Modules` 目录中。
- 用户可编辑模块（User-Editable Modules）：当代码是 **PlaygroundBook** 的说明性内容的一部分时使用。例如，可以通过让用户利用前几章中的代码来解决下一章中的问题，从而教会代码重用的价值。将这些 **PlaygroundMoudle** 放在 `.playgroundbook/Contents/UserModules` 目录中。

> Important: 如果使用的 Swift Playground 书本格式 （Swift Playground book format ）在 6.0 以下下（即在 **PlaygroundBook** 的属性列表（Manifest.plist）中的 Version 属性），则说明 **PlaygroundMoudle** 不可用。 应当在与 **PlaygroundBook** ， **PlaygroundChapter** 或 **PlaygroundPage** 中的 PublicResources 或 PrivateResources 目录相邻的名为 Sources 的目录下添加代码。

## Topics

