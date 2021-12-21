//
//  VideoApp.swift
//  VideoApp
//
//  Created by DSIAdmin on 12/21/21.
//

import SwiftUI

@main
struct VideoApp: App {
    var body: some Scene {
        WindowGroup {
            LibraryView().environmentObject(VideoModel())
        }
    }
}
