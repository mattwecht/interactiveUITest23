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
    @State private var userDate = Date()//creates blank instance of Date
    
    var body: some View {
        VStack(spacing: 50.0) {
            Image("dog")//set image
            Text(textTitle)//sets text below image
                .font(.title)
            TextField("What is the floofs name?", text: $name)//allows user to type
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            DatePicker(selection: $userDate, label: {  Text("Don't trust stairs! They are always up to something...:")
                    .multilineTextAlignment(.center)
            })//shows a date selection screen
            
            Button("CLICK MEEEE"){
                textTitle = "\(name) is a 11/10!!!"
                flag = true//once clicked the flag is switched causing the alert to pop up
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
        
        .alert("Hi \(name)! That is one cute dog", isPresented: $flag, actions: {
                })//sets alert to show once flag is tripped
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
