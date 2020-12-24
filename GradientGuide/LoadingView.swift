//
//  LoadingView.swift
//  GradientGuide
//
//  Created by Umer Khan on 30/10/2020.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var change: Bool = false
    
    
    var body: some View {
        VStack {
            
            ZStack {
                Text("Loading")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .offset(x: 0, y: -25)
     
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.systemGray5), lineWidth: 3)
                    .frame(width: 250, height: 3)
     
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.green, lineWidth: 3)
                    .frame(width: 30, height: 3)
                    .offset(x: change ? 110 : -110, y: 0)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            }
            .padding()
            Divider()
            
            VStack(alignment: .center) {
                Circle()
                    .stroke(
                        LinearGradient(gradient:
                                        Gradient(colors: [Color.blue, Color.red]),
                                       startPoint: .leading,
                                       endPoint: .trailing),
                        style: StrokeStyle(lineWidth: 15, lineCap: .round))
                    
                    .frame(width: 128, height: 128)
                    .rotationEffect(.degrees(change ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                
                Text("Loading...")
                    .padding()
                    .foregroundColor(Color.blue)
                
                Divider()
            }.padding()
            
            HStack(alignment: .lastTextBaseline) {
                
                Text("Loading")
                    .font(.title)
                    .foregroundColor(.purple)
                
                HStack {
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.green)
                        .offset(y: change ? -5 : 5)
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.pink)
                        .offset(y: change ? 5 : -5)
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.purple)
                        .offset(y: change ? -5 : 5)
                }
                
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
                
            }
            Divider()
            
            HStack(alignment: .lastTextBaseline) {
                
                Text("Loading")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack {
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.purple)
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.pink)
                    
                    Circle()
                        .frame(width: 8,
                               height: 8)
                        .foregroundColor(.green)
                }
                
                .rotationEffect(.degrees(change ? -360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            }
            
            Divider()
            
            Button("Start") {
                self.change.toggle()
            }.padding(50)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
