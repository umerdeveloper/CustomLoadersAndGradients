//
//  ContentView.swift
//  GradientGuide
//
//  Created by Umer Khan on 27/10/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var a = true
    var body: some View {
        NavigationView {
            VStack {
                Text("Gradient Guide")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.red)
                
                HStack {
                    Text("Linear")
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomLeading)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                    
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                    
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottomTrailing, endPoint: .topTrailing)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                    
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .center, endPoint: .bottom)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                }
                
                HStack {
                    Text("Radial")
                    RadialGradient(gradient: Gradient(colors: [Color.green, Color.purple]), center: .center, startRadius: 5, endRadius: 80)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                }
                
                HStack {
                    Text("Angular")
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(90))
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startAngle: .zero, endAngle: .degrees(180))
                        .frame(width: 100, height: 100, alignment: .center)
                }
                .onAppear {
                    print("🟣")
                }
                .onDisappear {
                    print("🟣")
                }
            }
            .onAppear {
                print("🟢")
            }
            .onDisappear {
                print("🟢")
        }
            .navigationBarTitle(Text("Gradients"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
