//
//  SimpleCameraView.swift
//  SimpleCamera
//
//  Created by Yuki Kuwashima on 2024/11/09.
//

import SwiftUI

public struct SimpleCameraView: View {

    @Environment(\.dismiss) var dismiss

    let onTakePhoto: (UIImage, DismissAction) async -> ()

    public init(_ onTakePhoto: @escaping (UIImage, DismissAction) async -> ()) {
        self.onTakePhoto = onTakePhoto
    }

    public var body: some View {
        NavigationStack {
            CameraView { image in
                await onTakePhoto(image, dismiss)
            }
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    VStack {
                        Spacer()
                        Text("タップで写真が撮れます")
                            .kerning(6)
                            .foregroundStyle(.white.opacity(0.6))
                            .padding(.bottom, 100)
                    }
                    .allowsHitTesting(false)
                }
                .ignoresSafeArea()
            }
            .navigationTitle("写真を撮る")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("キャンセル", role: .cancel) {
                        dismiss()
                    }
                }
            }
        }
    }
}
