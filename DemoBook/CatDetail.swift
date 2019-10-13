//
//  CatDetail.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct CatDetail: View {
    var cat: Cat
    
    var body: some View {
                NavigationView {
        VStack {
                Image(cat.name)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .padding()
                    ScrollView() {
                        HStack(spacing: 60) {
                        Text(cat.description)
                        }
                        .frame(height: 400)
                        
                    }
                     Spacer()

        }
                      .navigationBarTitle(cat.name+"的介紹")
        }
    }
}



struct CatDetail_Previews: PreviewProvider {
    static var previews: some View {
        CatDetail(cat: cats[0])
    }
}
