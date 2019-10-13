//
//  Home.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
NavigationView{
        VStack {
            Button(action: {}) {
                  Text("◉ 寵物百科 ◉")
                     .foregroundColor(.blue)
                     .padding()
                     .background(Color.yellow)
                     .cornerRadius(20)
                     .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 5))
                     .shadow(radius: 30)
            }
Spacer()
            HStack {
                NavigationLink(destination: CatList()){
                Image("美國短毛貓")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .clipped()
                    .cornerRadius(80)
                    .overlay(
                        Circle().stroke(Color.orange, lineWidth: 5)
                )
                }
                }
                Spacer()
                NavigationLink(destination: RabbitList()){
                Image("喜馬拉雅兔")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .clipped()
                    .cornerRadius(80)
                    .overlay(
                    Circle().stroke(Color.orange, lineWidth: 5)
                               )
            }
                               Spacer()
                
            Spacer()
            
                HStack {
                     NavigationLink(destination: RabbitHobby()){
                    Image("垂耳兔")
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .cornerRadius(80)
                        .overlay(
                            Circle().stroke(Color.orange, lineWidth: 5)
                    )
                    }
                    Spacer()
                    
                    NavigationLink(destination: CatHobby()){
                    Image("豹貓")
                                       .resizable()
                                      .renderingMode(.original)
                                       .scaledToFill()
                                       .frame(width: 180, height: 180)
                                       .clipped()
                                       .cornerRadius(80)
                                       .overlay(
                                           Circle().stroke(Color.orange, lineWidth: 5)
                                   )
                    }
                                   Spacer()
                    
            }
            
                Spacer()
        }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
