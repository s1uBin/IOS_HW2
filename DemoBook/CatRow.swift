//
//  CatRow.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct CatRow: View {
    
       var cat: Cat
    
    var body: some View {
        HStack {
            Image(cat.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(40)
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: 5)
            )
            VStack(alignment: .leading) {
                Text(cat.name)
            }
            Spacer()
            
        }
    }
}

struct CatRow_Previews: PreviewProvider {
    static var previews: some View {
         CatRow(cat: cats[0])
    }
}



