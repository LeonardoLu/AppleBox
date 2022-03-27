//
//  PlaygroundBook.swift
//  Welcome (iOS)
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import Foundation

class PlaygroundBook: File_Folder_Like {
    /// Could be anything legal.
    var name: String = ""
    
    /// Must be `.playgroundbook`.
    var `extension` = ".playgroundbook"

    let contents = PlaygroundBook.Contents()
}

extension PlaygroundBook{
    class Contents: File_Folder {

        /// A folder named `Chapters` which contains `PlaygroundChapter`.
        let Chapters = File_Folder()

        /// A plist file configrate this book.
        /// The file named with `Manifest.plist`
        let Manifest = PlaygroundBook.Manifest()

        /// A folder named `Modules` which contains nonuser-editable `PlaygroundModule`.
        var Modules = File_Folder()

        /// A folder named `UserModules` which contains user-editable `PlaygroundModule`.
        let UserModules = File_Folder()

        /// A folder named `PrivateResources` which contains nonuser-editable and non-code `File`.
        var PrivateResources = File_Folder()
    }
}




