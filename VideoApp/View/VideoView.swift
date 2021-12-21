//
//  VideoView.swift
//  VideoApp
//
//  Created by DSIAdmin on 12/21/21.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    @EnvironmentObject var model: VideoModel
    var video:Video
    
    var body: some View {
        
        let url = URL(string: video.url)
        
        VStack{
            Text(video.title)
                .font(.title)
                .bold()
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
    
        }.padding()
    
    }
}

