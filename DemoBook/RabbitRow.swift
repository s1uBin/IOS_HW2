//
//  RabbitRow.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct RabbitRow: View {
    
       var rabbit: Rabbit
    
    var body: some View {
        HStack {
            Image(rabbit.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(40)
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 5)
            )
            VStack(alignment: .leading) {
                Text(rabbit.name)
            }
            Spacer()
            
        }
    }
}

struct RabbitRow_Previews: PreviewProvider {
    static var previews: some View {
         RabbitRow(rabbit: rabbits[0])
    }
}
