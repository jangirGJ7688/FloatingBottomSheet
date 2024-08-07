//
//  FloatingSheet.swift
//  FloatingBottomSheet
//
//  Created by Ganpat Jangir on 06/08/24.
//

import SwiftUI


extension View {
    @ViewBuilder
    func floatingBottomSheet<Content:View>(isPresented: Binding<Bool>,onDismiss: @escaping() -> () = {}, @ViewBuilder content: @escaping() -> Content) -> some View {
        self
            .sheet(isPresented: isPresented, onDismiss: onDismiss, content: {
                content()
                    .presentationCornerRadius(0)
                    .presentationBackground(.clear)
                    .presentationDragIndicator(.hidden)
            })
    }
}
