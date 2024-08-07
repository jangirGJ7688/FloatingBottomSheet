//
//  Models.swift
//  FloatingBottomSheet
//
//  Created by Ganpat Jangir on 07/08/24.
//

import Foundation
import SwiftUI

struct ButtonConfig {
    var title: String
    var tint: Color
    var forground: Color
}

struct BottomSheetConfig {
    var title: String
    var content: String
    var image: ButtonConfig
    var button1: ButtonConfig
    var button2: ButtonConfig?
}
