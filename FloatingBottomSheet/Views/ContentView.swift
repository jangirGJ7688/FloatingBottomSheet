//
//  ContentView.swift
//  FloatingBottomSheet
//
//  Created by Ganpat Jangir on 06/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet: Bool = false
    @State private var sheetType: SheetType = .Alert
    var body: some View {
        VStack {
            HStack {
                ButtonView("Alert", _color: .red, _type: .Alert)
                ButtonView("Question", _color: .blue, _type: .Question)
                ButtonView("Request", _color: .green, _type: .Request)
            }
            .padding()
            .background(Color.gray.opacity(0.4),in: RoundedRectangle(cornerRadius: 4.0))
        }
        .padding()
        .floatingBottomSheet(isPresented: $showSheet) {
            BottomSheetView(sheetType: sheetType)
        }
    }
    
    @ViewBuilder
    func ButtonView(_ title: String,_color: Color,_type: SheetType) -> some View {
        Button(action: {
            sheetType = _type
            showSheet.toggle()
        }, label: {
            Text(title)
                .padding()
                .foregroundColor(.white)
                .font(.headline)
                .background(_color, in: RoundedRectangle(cornerRadius: 4.0))
        })
    }
}

#Preview {
    ContentView()
}
