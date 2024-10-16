//
//  ContentView.swift
//  Multiply
//
//  Created by Benny Chopra on 8/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var  firstNumberTextField: String = ""
    @State private var secondNumberTextField: String = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(.largeTitle)
            TextField("Enter A Number", text :$firstNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter A Number", text :$secondNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondnumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondnumber
                        
                        if calculation == 64 {
                            imageName = "64"
                        } else if calculation % 2 == 0 {
                            imageName = "EVEN"
                        } else {
                            imageName = "ODD"
                        }
                        
                    }
                }
            }
            .padding()
            Text("\(calculation)")
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
