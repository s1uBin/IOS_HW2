//
//  IntroView.swift
//  DemoBook
//
//  Created by SHIH-YING PAN on 2019/10/2.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        
        
        VStack {
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    
                    ForEach(0..<songs.count) { (index) in
                        Image(songs[index].name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200)
                            .clipped()
                    }
                }
                .frame(height: 200)
                
            }
            Text("2月7日水中瓶，愛瘋一切為蘋果。桌球快狠不忘準，音樂聲裡讀推理。 非思不可jobs， 為愛尋夢往前飛。iPad不是放大Phone，兩者皆通彼得潘。")
        }
        .navigationBarTitle("自我介紹")
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IntroView()
        }
    }
}
