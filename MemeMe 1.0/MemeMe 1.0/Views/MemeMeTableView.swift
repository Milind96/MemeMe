//
//  MemeMeTableView.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 13/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit

class MemeMeTableView: UITableViewCell {
    
    @IBOutlet weak var sentImage: UIImageView!
    @IBOutlet weak var sentImgTitle : UILabel!
    
    func upateTableViews(Meme : Meme){
        sentImage.image = Meme.memedImage
        sentImgTitle.text = Meme.topText + "...." + Meme.bottomText
    }

}
