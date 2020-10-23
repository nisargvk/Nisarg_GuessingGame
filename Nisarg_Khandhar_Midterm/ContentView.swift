//
//  ContentView.swift
//  Nisarg_Khandhar_Midterm
//
//  Created by Nisarg on 2020-10-22.


import SwiftUI

struct ContentView: View {
    @State private var guess: String = ""
    @State private var selection: Int? = nil
    @State private var tapped2 = false
    @State private var attempts: Int? = 5
   
    
    var body: some View {
        NavigationView{
            VStack{
                Text("I have a number between 1 to 25 you have 5 attempts can you guess the number correctly")
                    .font(.system(size: 30))
                   // .position(CGPoint(x: 20.0, y: 25.0))
                
                TextField("Type the Number", text: $guess)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .position(CGPoint(x: 200.0, y: 250.0))
                
                Text("5 Attempts Left")

                
                Section{
                    Button(action:{
                        print("Check")
                        if attempts == 5 {
                        }
                        
                        
                    }){
                        Text("Check")
                            .accentColor(.blue)
                            
                           // .position(CGPoint(x: 200.0, y: 8.0))
                    }
                    
                }//Section
                NavigationLink(destination: CheckScore(), tag: 2, selection: $selection) {}
                .navigationBarItems(trailing:
            Button(action:{
                
                                print("plus sign")
                                self.tapped2 = true
                                self.selection = 2
               
            }){
                Image(systemName: "plus")
            }
            
            
                )
            }//VStack
            .navigationBarTitle("Nisarg_GuessingGame", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
           
        }//NavigationView
        .onAppear(){
            let number = Int.random(in: 0..<26)
            
        }
        
   
    
}
   // @IBAction func myAction(sender: AnyObject){}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
