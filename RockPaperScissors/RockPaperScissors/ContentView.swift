//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by iOS Lab on 13/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerPoints = 0
    @State var playerImage = "rock"
    @State var cpuImage = "rock"
    
    @State var gameState = "VS"
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .ignoresSafeArea()
            
            VStack(spacing:30){
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                        .opacity(0.5)
                        .frame(height:150)
                    
                    HStack{
                        VStack(alignment: .leading) {
                            
                            Text("ROCK")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                            
                            Text("PAPER")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                            
                            Text("SCISSORS")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                        }
                        
                        Spacer()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                            
                            VStack{
                                Text("Score")
                                    .bold()
                                    .foregroundColor(Color("navyBlue"))
                                
                                Text("\(playerPoints)")
                                    .bold()
                                    .font(.system(size: 60))
                            }
                        }
                    }.padding()
                }.padding()
                Spacer()
                
                ZStack(){
                    Circle()
                        .frame(width: 190)
                        .foregroundColor(.red)
                    Circle()
                        .frame(width: 145)
                        .foregroundColor(.white)
                    Image("\(cpuImage)")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                
                Text("VS")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    
                ZStack(){
                    Circle()
                        .frame(width: 190)
                        .foregroundColor(.red)
                    Circle()
                        .frame(width: 145)
                        .foregroundColor(.white)
                    Image("\(playerImage)")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                
                Spacer()
                
                Button(action:{
                    let randomPlayer = Int.random(in: 1...3)
                    let randomCPU = Int.random(in: 1...3)
                    
                    playerImage  = imageGenerator(randomPlayer)
                    cpuImage = imageGenerator(randomCPU)
                    
                    calculatePoints(randomPlayer, randomCPU)
                }){
                    Text("PLAY")
                        .bold()
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 40)
                        .font(.system(size: 28))
                        .padding()
                        .foregroundColor(.black)
                        
                }
                .background(Color(.yellow))
                    .cornerRadius(25)
            }
                    .padding()
            
            
            Spacer()
        }
    }
    
    func calculatePoints(_ me: Int, _ cpu: Int)
    {
        if me == 1 && cpu == 3{
            playerPoints = playerPoints + 1
        }
        if me == 2 && cpu == 1{
            playerPoints = playerPoints + 1
        }
        if me == 3 && cpu == 2{
            playerPoints = playerPoints + 1
        }
    }
    
    func imageGenerator(_ num: Int) -> String{
        if num == 1{
            return "rock"
        }
        else if num == 2 {
            return "paper"
        }
        else if num == 3{
            return "scissors"
        }
        return "rock"
    }
}

#Preview {
    ContentView()
}
