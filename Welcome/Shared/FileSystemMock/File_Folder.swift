//
//  File_Folder.swift
//  Welcome
//
//  Created by lujunhui.2nd on 2022/3/27.
//

import Foundation

/// Something behavior like a folder
protocol File_Folder_Like: File {

}

class File_Folder: File_Folder_Like {
    /// Could be anything legal.
    var name: String = ""

    /// Just a folder.
    var `extension`: String = ""
}
