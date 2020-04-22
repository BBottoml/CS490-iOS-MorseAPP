//
//  MorseAPICaller.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/18/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import Foundation

    func englishToMorse(content: String, success: @escaping (String) -> ()) {
        

        
        let url = URL(string: "https://api.funtranslations.com/translate/morse.json")!
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)

        
        request.httpMethod = "POST"
        request.setValue("wto6C8WdT436rZ7CfDOy0AeF", forHTTPHeaderField: "X-Funtranslations-Api-Secret")
        
        let parameters: [String: Any] = [
            "text": content
        ]
        
        request.httpBody = parameters.percentEncoded()
        
        
        var translatedText = content
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
               print(error.localizedDescription)
               translatedText = "error"
            } else if let data = data {
               let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]

               // TODO: Get the array of movies
                print("here2")
                // print(dataDictionary)
                let contents = dataDictionary["contents"] as! [String:Any]
                let morse = contents["translated"] as! String
                translatedText = morse
                success(translatedText)
                print("Morse:")
                print(translatedText)
                
                
                //translatedText = (dataDictionary["contents"]["translated"])as! String
               // TODO: Store the movies in a property to use elsewhere
               // TODO: Reload your table view data

            }

            
        }
        task.resume()
        
    }

func morseToEnglish(content: String) -> String {
    
    print("here1")
    
    let url = URL(string: "http://api.funtranslations.com/translate/morse2english.json")!
    var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
    let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)

    
    request.httpMethod = "POST"
    request.setValue("wto6C8WdT436rZ7CfDOy0AeF", forHTTPHeaderField: "X-Funtranslations-Api-Secret")
    
    let parameters: [String: Any] = [
        "text": content
    ]
    
    request.httpBody = parameters.percentEncoded()
    
    
    var translatedText = content
    let task = session.dataTask(with: request) { data, response, error in
        if let error = error {
           print(error.localizedDescription)
           translatedText = "error"
        } else if let data = data {
           let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]

           // TODO: Get the array of movies
            print("here2")
            // print(dataDictionary)
            let contents = dataDictionary["contents"] as! [String:Any]
            let morse = contents["translated"] as! String
            translatedText = morse
            print("Enmglish:")
            print(translatedText)
            
            
            //translatedText = (dataDictionary["contents"]["translated"])as! String
           // TODO: Store the movies in a property to use elsewhere
           // TODO: Reload your table view data

        }

        
    }
    task.resume()
    
    return translatedText
}

extension Dictionary {
    func percentEncoded() -> Data? {
        return map { key, value in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
        }
        .joined(separator: "&")
        .data(using: .utf8)
    }
}

extension CharacterSet {
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="

        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}
