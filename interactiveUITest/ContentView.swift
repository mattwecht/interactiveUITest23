//
//  ContentView.swift
//  interactiveUITest
//
//  Created by scholar on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    
   @State private var name = ""
    @State private var textTitle = "Lets RATE THAT DOG"
    var body: some View {
        VStack {
            Image("dog")
            Text(textTitle)
                .font(.title)
            TextField("What is the floofs name?", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("CLICK MEEEE"){
                textTitle = "\(name) is a 11/10!!!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()

    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
