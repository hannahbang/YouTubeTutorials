//
//  ContentView.swift
//  BitCoinProject
//
//  Created by Hannah Bang on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card7"
    var cpuCard = "card13"
    
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()

                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()

                    Image(playerCard)
                    
                    Spacer()

                    Image(cpuCard)
                    
                    Spacer()

                }
                
                Spacer()

              
                .foregroundColor(.white)
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()

                HStack{
                    Spacer()

                    VStack{

                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))//passing integer to text gives error, so convert integer to string form aka casting
                            .font(.largeTitle)
                          }
                    Spacer()

                    VStack{
                        Text("CPU")
                            .font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                           }
                    Spacer()

                        }//end of HStack
                .foregroundColor(.white)//affects all elements inside the HStack
                Spacer()

            }
        }
    }
    
    func deal(){
        print("Deal cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
