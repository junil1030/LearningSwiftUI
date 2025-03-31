//
//  ContentView.swift
//  DynamicFloatingSheets
//
//  Created by 서준일 on 3/30/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - 뷰 속성
    @State private var show: Bool = false
    var body: some View {
        Button("Show Tray View") {
            show.toggle()
        }
        .systemTrayView($show) {
            Text("Hello Form Tray")
                .frame(maxWidth: .infinity)
                .frame(height: 300)
        }
    }
}

#Preview {
    ContentView()
}
