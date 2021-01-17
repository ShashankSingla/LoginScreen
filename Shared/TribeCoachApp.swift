//
//  TribeCoachApp.swift
//  Shared
//
//  Created by shashank on 17/01/21.
//

import SwiftUI
import Foundation

@main
struct TribeCoachApp: App {
    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            ContentView()
        }
        #else
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        #endif
    }
}

var screen: CGRect = {
    #if os(iOS)
    return UIScreen.main.bounds
    #else
    return NSScreen.main!.visibleFrame
    #endif
}()

var isMacOS: Bool = {
    #if os(iOS)
        return false
    #else
        return true
    #endif
   
}()

// removing focus ring for mac
#if !os(iOS)
extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get {.none}
        set {}
    }
}
#endif
