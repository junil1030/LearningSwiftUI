//
//  ContentView.swift
//  DynamicFloatingSheets
//
//  Created by 서준일 on 3/30/25.
//

import SwiftUI

enum CurrentView {
    case actions
    case periods
}

struct ContentView: View {
    //MARK: - 뷰 속성
    @State private var show: Bool = false
    @State private var currentView: CurrentView = .actions
    @State private var selectedAction: Action?
    @State private var selectedPeriod: Period?
    var body: some View {
        Button("Show Tray View") {
            show.toggle()
        }
        .systemTrayView($show) {
            VStack(spacing: 15) {
                ZStack {
                    View1()
                }
                .compositingGroup()
                
                Button {
                    
                } label: {
                    Text("Continue")
                        .fontWeight(.semibold)
                        .frame(maxHeight: .infinity)
                        .padding(.vertical, 15)
                        .foregroundStyle(.white)
                        .background(.blue, in: .capsule)
                }
                .padding(.top, 15)
            }
            .padding(20)
        }
    }
    
    //MARK: - View 1
    @ViewBuilder
    func View1() -> some View {
        VStack(spacing: 12) {
            HStack {
                Text("Choose Subscription")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer(minLength: 0)
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(Color.gray, Color.primary.opacity(0.1))
                }
            }
            .padding(.bottom, 10)
            
            ForEach(actions) { action in
                let isSelected: Bool = selectedAction?.id == action.id
            
                HStack(spacing: 10) {
                    Image(systemName: action.image)
                        .font(.title)
                        .frame(width: 40)
                    
                    Text(action.title)
                        .fontWeight(.semibold)
                    
                    Spacer(minLength: 0)
                    
                    Image(systemName: isSelected ? "checkmark.circle.fill" : "circle.fill")
                        .font(.title)
                        .contentTransition(.symbolEffect)
                        .foregroundStyle(isSelected ? Color.blue : Color.gray.opacity(0.2))
                }
                .padding(.vertical, 6)
                .contentTransition(.rect)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedAction = isSelected ? nil :action
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
