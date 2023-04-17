//
//  ContentView.swift
//  interactiveUITest
//
//  Created by scholar on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""//to be replaced with user input
    @State private var textTitle = "Lets RATE THAT DOG"//what is under the image
    @State private var flag = false//starting as false means the alert must be triggered by something
    
    var body: some View {
        VStack {
            Image("dog")//set image
            Text(textTitle)//sets text below image
                .font(.title)
            TextField("What is the floofs name?", text: $name)//allows user to type
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("CLICK MEEEE"){
                textTitle = "\(name) is a 11/10!!!"
                flag = true//once clicked the flag is switched causing the alert to pop up
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
        
        .alert("Hi \(name)! You are SO CUTE", isPresented: $flag, actions: {
                })//sets alert to show once flag is tripped
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
