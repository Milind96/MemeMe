//
//  MemeMeCollectionView.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 14/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit

class MemeMeCollectionView: UICollectionViewCell {
    
    
    @IBOutlet weak var sentImage: UIImageView!
    
    func upateTableViews(Meme : Meme){
        sentImage.image = Meme.memedImage
        
    }
}
