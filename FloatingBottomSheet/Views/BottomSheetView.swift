//
//  BottomSheetView.swift
//  FloatingBottomSheet
//
//  Created by Ganpat Jangir on 06/08/24.
//

import SwiftUI

struct BottomSheetView: View {
    var sheetContent: BottomSheetConfig
    init(sheetType: SheetType) {
        self.sheetContent = DummySheetContent.getDummyContent(sheetType)
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: sheetContent.image.title)
                .font(.title)
                .foregroundStyle(sheetContent.image.forground)
                .frame(width: 65,height: 65)
                .background(sheetContent.image.tint.gradient,in: .circle)
            Text(sheetContent.title)
                .font(.title)
                .fontWeight(.semibold)
            Text(sheetContent.content)
                .foregroundColor(.gray)
                .font(.headline)
                .multilineTextAlignment(.center)
            HStack {
                ButtonView(sheetContent.button1)
                if sheetContent.button2 != nil {
                    ButtonView(sheetContent.button2!)
                }
            }
        }
        .presentationDetents([.height(400),.fraction(0.999)])
        .padding([.horizontal,.bottom],15)
        .background {
            RoundedRectangle(cornerRadius: 15)
                .fill(.background)
                .padding(.top,30)
        }
        .shadow(color: Color.black.opacity(0.12),radius: 8)
        .padding(.horizontal,15)
    }
    
    @ViewBuilder
    func ButtonView(_ config: ButtonConfig) -> some View {
        Button(action: {
            print(config.title)
        }, label: {
            Text(config.title)
                .fontWeight(.bold)
                .foregroundStyle(config.forground)
                .padding()
                .frame(maxWidth: .infinity)
                .background(config.tint.gradient, in: .rect(cornerRadius: 6))
        })
    }
}

#Preview {
    BottomSheetView(sheetType: .Alert)
}
