//
//  DummySheetContent.swift
//  FloatingBottomSheet
//
//  Created by Ganpat Jangir on 07/08/24.
//

import SwiftUI

struct DummySheetContent {
    
    static func getDummyContent(_ sheetType: SheetType) -> BottomSheetConfig {
        switch sheetType {
        case .Alert:
            BottomSheetConfig(title: "Ooops!", content: "Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance.", image: ButtonConfig(title: "exclamationmark.triangle.fill", tint: Color.red, forground: Color.white), button1: ButtonConfig(title: "Done", tint: Color.red, forground: Color.white))
        case .Question:
            BottomSheetConfig(title: "Replace existing folder?", content: "Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance.", image: ButtonConfig(title: "questionmark.folder.fill", tint: Color.blue, forground: Color.white), button1: ButtonConfig(title: "Cancel", tint: Color.blue, forground: Color.white),button2: ButtonConfig(title: "Replace", tint: Color.gray, forground: Color.black))
        case .Request:
            BottomSheetConfig(title: "Request from iTunes", content: "Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance.", image: ButtonConfig(title: "person.fill.questionmark", tint: Color.green, forground: Color.white), button1: ButtonConfig(title: "Reject", tint: Color.green, forground: Color.white),button2: ButtonConfig(title: "Accept", tint: Color.red, forground: Color.white))
        }
    }
}

enum SheetType {
    case Alert
    case Question
    case Request
}
