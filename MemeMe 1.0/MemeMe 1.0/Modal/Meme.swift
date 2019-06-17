 //
 //  Meme.swift
 //  MemeMe 1.0
 //
 //  Created by milind shelat on 28/05/19.
 //  Copyright © 2019 milind shelat. All rights reserved.
 //
 
 import Foundation
 import UIKit
 
    struct Meme {
        let topText : String
        let bottomText : String
        let originalImage : UIImage
        let memedImage : UIImage
        
        init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage){
            self.topText = topText
            self.bottomText = bottomText
            self.originalImage = originalImage
            self.memedImage = memedImage
        }
    }
    
    
    
 
