//
//  CatDetail2.swift
//  DemoBook
//
//  Created by user on 9/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct CatDetail2: View {
    
    var cat : Cat
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image(cat.name)
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 200)
                 .clipped()
                Text(cat.description)
                    .padding()
                Spacer()
            }
            .navigationBarTitle(cat.name+"的介紹")
        }
    }
    
    
}

struct CatDetail2_Previews: PreviewProvider {
    static var previews: some View {
        CatDetail2(cat:cats[0])
    }
}
