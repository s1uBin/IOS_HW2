//
//  CatList.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct CatList: View {
    var body: some View {
        
        NavigationView {
            VStack{
                ScrollView(.horizontal){
                    HStack(spacing: 20){
                        ForEach(0..<cats.count) { (index) in
                        Image(cats[index].name)
                        .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                            .cornerRadius(40)
                            .overlay(
                                Circle().stroke(Color.black, lineWidth: 5)
                        )
                        }
                        }
                    }
                List{
                Section(header: Text("Cat")){
                ForEach(0..<cats.count) {
                (index)  in
                NavigationLink(destination: CatDetail(cat: cats[index])) {
                    CatRow(cat: cats[index])      
                }
            }
                    }
                }
                .onAppear {
                   UITableView.appearance().separatorColor = .clear
                }
            .navigationBarTitle("貓的品種")
            }
        }
        
    }
}

struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        CatList()
    }
}
