//
//  RabbitDetail.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct RabbitDetail: View {
    var rabbit: Rabbit
    
    var body: some View {
                NavigationView {
        VStack {
                Image(rabbit.name)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .padding()
                    ScrollView() {
                        HStack(spacing: 60) {
                        Text(rabbit.description)
                        }
                        .frame(height: 200)
                        
                    }
                     Spacer()

        }
                      .navigationBarTitle(rabbit.name+"的介紹")
        }
    }
}



struct RabbitDetail_Previews: PreviewProvider {
    static var previews: some View {
        RabbitDetail(rabbit: rabbits[0])
    }
}
