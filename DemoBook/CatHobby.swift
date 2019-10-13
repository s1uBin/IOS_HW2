//
//  CatHobby.swift
//  DemoBook
//
//  Created by user on 12/10/2019.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import SwiftUI

struct CatHobby: View {
    
    var body: some View {
        
                NavigationView {
        VStack {
            Spacer()
                    Image("美國短毛貓")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .clipped()
                    .cornerRadius(80)
                    .overlay(
                        Circle().stroke(Color.orange, lineWidth: 5)
                )
            Spacer()
                        VStack(spacing: 20) {
                             Text("★貓咪的本性❤貓的本性是不認特定的主人的。但是，當貓在一個家庭被飼養一段時間，在主人的關懷、訓練和調教下，孤獨習性也是可以改變的，並能最終與主人建立感情；❤在這個過程中，它會對主人家庭與其周圍環境建立起一個屬於自己領地範圍的概念，不允許其他貓進入自己的領地，一旦有入侵者，就會立即發起攻擊。\n★貓咪舔毛的習慣❤貓的舐毛行為，有幾種用意。飲食後將咀部清理是最常見的動作，但當貓咪心情欠佳，任何人抱或觸摸他的身體，他都會將被觸及過的皮毛用舌頭舐至濕透，才會安靜下來，❤這表示他們不喜歡人帶給他們的異味，臨盆的貓會用粗糙的舌頭將腹部的皮毛舐落使乳頭都露出讓BB容易吸吮乳汁。皮膚生癬或生寄生蟲時，貓兒亦有舐毛的動作，用意是止癢。\n★貓咪嫉妒心強❤貓的嫉妒心強，表現在它不但會嫉妒同類受到寵愛，而且有時主人對孩子過多的親呢表現，也會引起貓的憤憤不平。❤比方你抱起兩隻貓中的一隻，另一隻貓立刻會發出”嗚嗚”的威脅聲，而懷中的貓也會不甘示弱，阻止另一隻貓接近主人。").fontWeight(.heavy)
                            .padding()
                                .background(LinearGradient(gradient: Gradient(colors:[Color.blue, Color.green]),startPoint: .leading, endPoint: .trailing))
                                .frame(height: 500)
                            }
                        .frame(height: 500)

                     Spacer()

        }
                      .navigationBarTitle("貓的小知識")
        }
    }
}

struct CatHobby_Previews: PreviewProvider {
    static var previews: some View {
        CatHobby()
    }
}
