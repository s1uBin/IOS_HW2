//
//  RabbitHobby.swift
//  DemoBook
//
//  Created by user on 12/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct RabbitHobby: View {
            var body: some View {
                    NavigationView {
            VStack {
                        Image("獺兔")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .cornerRadius(80)
                        .overlay(
                            Circle().stroke(Color.green, lineWidth: 5)
                    )
                            VStack(spacing: 20) {
                                 Text("1。夜間活動，採食頻繁。白天除餵食時間外，大部分時間在睡覺。\n2。膽小怕驚。所以在兔舍附近不能放炮，以免嚇死兔子。 \n   3。怕潮濕喜乾燥。在潮濕的地方養兔，會得球蟲病。\n4。群居性差。公母群養易發生爭鬥。尤其是公兔之間。\n5。穴居性。野兔居住於穴中，馴化後的家兔依舊保持這一習性，如果你把兔養在土地上，它就自己會打洞做窩。\n6。要磨牙。不磨牙它的牙齒就會不停的長。所以給兔做窩時要用兔咬不動的竹杆或金屬網，而不能用它能咬動的木料和塑料等材料").fontWeight(.heavy)
                                .padding()
                                    .background(LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue]),startPoint: .leading, endPoint: .trailing))
                                }
                            .frame(height: 400)

                         //Spacer()

            }
                          .navigationBarTitle("兔的小知識")
            }
        }
    }


struct RabbitHobby_Previews: PreviewProvider {
    static var previews: some View {
        RabbitHobby()
    }
}
