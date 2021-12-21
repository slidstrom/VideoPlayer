//
//  VideoModel.swift
//  VideoApp
//
//  Created by DSIAdmin on 12/21/21.
//

import Foundation

class VideoModel: ObservableObject {
    
    @Published var videos = [Video]()
    
    init(){
        getRemoteData()
    }
    
    func getRemoteData(){
        
        let stringPath = "https://codewithchris.github.io/Module5Challenge/Data.json"
        
        let url = URL(string: stringPath)
        
        guard url != nil else{
            return
        }
        
        let request = URLRequest(url: url!)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { ( data, response, error ) in
            
            
            guard error == nil else {
                
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                
                let videos = try decoder.decode([Video].self, from: data!)
                
                DispatchQueue.main.async {
                    self.videos = videos
                }
                
            }
            catch{
                print(error)
            }
            
            
        }
        
        dataTask.resume()
    }
    
    
}
