//
//  RabbitList.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct RabbitList: View {
    var body: some View {
        
        NavigationView{
        VStack{
            ScrollView(.horizontal){
                HStack(spacing: 20){
                    ForEach(0..<rabbits.count) { (index) in
                    Image(rabbits[index].name)
                    .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipped()
                        .cornerRadius(40)
                        .overlay(
                            Circle().stroke(Color.red, lineWidth: 5)
                    )
                    }
                    }
                }
            List{
                Section(header: Text("Rabbit")){
                ForEach(0..<rabbits.count) { (index)  in
                NavigationLink(destination: RabbitDetail(rabbit: rabbits[index])) {
                    RabbitRow(rabbit: rabbits[index])
                }
            }
                }
        }
           .onAppear {
               UITableView.appearance().separatorColor = .clear
            }
        }
            .navigationBarTitle("兔的品種")
        }
    }
        
}

struct RabbitList_Previews: PreviewProvider {
    static var previews: some View {
        RabbitList()
    }
}
