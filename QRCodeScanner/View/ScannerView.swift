//
//  ScannerView.swift
//  QRCodeScanner
//
//  Created by Abdullah Karaboğa on 10.04.2023.
//

import SwiftUI

struct ScannerView: View {
    var body: some View {

        VStack(spacing: 8) {
            Button {

            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.red)
            }
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("sadas")
                .font(.title3)
                .foregroundColor(.black.opacity(0.8))
                .padding(.top, 20)
            Text("Scanning will start automatically")
                .font(.callout)
                .foregroundColor(.gray)


            Spacer(minLength: 0)

            GeometryReader {

                let size = $0.size

                ZStack {
                    RoundedRectangle(cornerRadius: 4, style: .circular)
                        .stroke(.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                }
                    .frame(width: size.width, height: size.width)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .padding(.horizontal)

            Spacer(minLength: 15)

            Button {

            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .font(.largeTitle)
                    .foregroundColor(.gray)

            }
            Spacer(minLength: 45)
        }
            .padding(15)
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
