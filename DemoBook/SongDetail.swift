//
//  SongDetail.swift
//  DemoBook
//
//  Created by SHIH-YING PAN on 2019/10/2.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct SongDetail: View {
    var song: Song
    
    var body: some View {
        VStack {
             Spacer()
            SongImage(song: song)
            
            Text(song.lyrics)
                .padding()
             Spacer()
                         NavigationView {
                 NavigationLink(destination: CatDetail(cat: cats[0])) {
                               Image(systemName: "magnifyingglass.circle")
                                Text("More")
                            }

            }
             
        }
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: songs[0])
    }
}

struct SongImage: View {
    
    var song: Song
    
    var body: some View {
        Image(song.name)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
            .clipped()
    }
}
