//
//  ContentView.swift
//  VideoApp
//
//  Created by DSIAdmin on 12/21/21.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model: VideoModel
    
    var body: some View {
        
        NavigationView {
            
            List{
                ForEach(model.videos){ video in
                    NavigationLink {
                        VideoView(video: video)
                    } label: {
                        Text(video.title)
                    }

                    
                }
                    
                    
                }.navigationTitle(Text("All Videos"))
        }
            
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
