//
//  CameraView.swift
//  SimpleCamera
//
//  Created by Yuki Kuwashima on 2024/11/09.
//

import Foundation
import SwiftUI
import UIKit

public struct CameraView: UIViewControllerRepresentable {
    public typealias UIViewControllerType = CameraViewController
    let vc: UIViewControllerType = .init()
    public init(onTakePhoto: @escaping (UIImage) async -> ()) {
        vc.onTakePhoto = onTakePhoto
    }
    public func makeUIViewController(context: Context) -> UIViewControllerType {
        vc
    }
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
