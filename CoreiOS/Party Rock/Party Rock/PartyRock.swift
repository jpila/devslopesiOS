//
//  PartyRock.swift
//  Party Rock
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class PartyRock: NSObject {

    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imagURL: String, videoURL: String, videoTitle: String){
        
        _imageURL = imagURL
        _videoTitle = videoURL
        _videoTitle = videoTitle
    }
    
}
