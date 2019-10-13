//
//  SongList.swift
//  DemoBook
//
//  Created by SHIH-YING PAN on 2019/9/25.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct SongList: View {
    var body: some View {
        
        NavigationView {
            List(0..<songs.count) { (index)  in
                NavigationLink(destination: SongDetail(song: songs[index])) {
                    SongRow(song: songs[index])
                    
                }
                
            }
            .navigationBarTitle("貓的品種")
        }
        
    }
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
