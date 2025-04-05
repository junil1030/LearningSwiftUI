//
//  NetflixHeroCell.swift
//  NetflixClone
//
//  Created by 서준일 on 4/5/25.
//

import SwiftUI

struct NetflixHeroCell: View {
    
    var imageName: String = "RandomImage"
    var isNetflixFlim: Bool = true
    var title: String = "players"
    var categories: [String] = ["Raunchy", "Romantic", "Comedy"]
    var onBackgroundPressed: (() -> Void)? = nil
    var onPlayPressed: (() -> Void)? = nil
    var onMyListpressed: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            //ImageLoader
        }
            .aspectRatio(0.8, contentMode: .fit)
    }
}

#Preview {
    NetflixHeroCell()
        .padding(40)
}
