//
//  ImageExtension.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}
