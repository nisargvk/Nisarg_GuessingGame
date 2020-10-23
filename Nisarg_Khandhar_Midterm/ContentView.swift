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
    @State private var attempts: Int = 5
    @State private var selectedIndex : Int? = nil
    @State private var number: Int =  0
    @State private var tapped = false
    @State private var numbergenerated: Int =  0
    @State private var won = false
    @State private var attemptcheck: String = ""
    @State private var gameOver1 = false
    
    
    
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                
                Text("I have a number between 1 to 25 you have 5 attempts can you guess the number correctly")
                    .font(.system(size: 30))
                // .position(CGPoint(x: 20.0, y: 25.0))
                
                TextField("Type the Number", text: $guess)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .position(CGPoint(x: 200.0, y: 250.0))
                
                
                Text("\(attempts) Attempts Left")
                    .position(CGPoint(x: 200.0, y: 250.0))
                
                Text("\(attemptcheck)")
                
                
                
                Section{
                    Button(action:{
                    
                        
                        self.isNumberChecked()
                        
                    
                            
                        
                    }){
                        Text("Check")
                            .accentColor(.blue)
                        
                            
                            .alert(isPresented: self.$won){
                                Alert(title: Text("You: "),
                                      message: Text("You have won"),
                                dismissButton:
                                .default(Text("Result")))
                            }
                            
                            
                            
                            .alert(isPresented: self.$gameOver1){
                                Alert(title: Text("You: "),
                                      message: Text("Game over"),
                                dismissButton:
                                .default(Text("Result")))
                            }
                    }
                    
                }//Section
                NavigationLink(destination: CheckScore(), tag: 2, selection: $selection) {}
                    .navigationBarItems(trailing:
                                            Button(action:{
                                                
                                                print("Check")
                                                self.tapped2 = true
                                                self.selection = 2
                                                
                                            }){
                                                Text("Check")
                                            }
                                        
                                        
                    )
                    .onTapGesture {
                        // selectedIndex = idx
                        print("Number is checked")
                        self.tapped = true
                    }
            }//VStack
            .navigationBarTitle("Nisarg_GuessingGame", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            
        }//NavigationView
        .onAppear(){
            self.numbergenerated = Int.random(in: 0..<26)
            
        }
    }
        
        func isNumberChecked(){
            attempts = attempts-1
            number = Int(guess) ?? 0
           
            
            if number == numbergenerated{
                //return true
                print("Both values matched")
                if number < numbergenerated{
                    self.attemptcheck = "Too Low"
                    
                }
                else{
                    self.attemptcheck = "Too High"
                }
            }
            
            
        }
    
    func isGameOver(){
        if attempts == 0{
            self.gameOver1 = true
        }
    }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

