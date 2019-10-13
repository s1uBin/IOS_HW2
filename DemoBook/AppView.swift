//
//  AppView.swift
//  DemoBook
//
//  Created by SHIH-YING PAN on 2019/10/2.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
            }
            CatList()
                .tabItem {
                    Image(systemName: "book")
                    Text("貓")
                    
            }
            RabbitList()
                .tabItem {
                    Image(systemName: "book")
                    Text("兔")
                    
                    
            }
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
