//
//  Model.swift
//  youtube-demo
//
//  Created by Roger Yuen on 2020/12/2.
//

import Foundation

class Model {
    
    func getVideos() {
        // Create a URL object
        let url = URL(string: Constansts.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // check if any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                // Parsing the data into video objects.
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
            
            
        }
        
        // Kick off the task
        dataTask.resume()
    }
}
