//
//  MemeDetailVC.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 14/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit

class MemeDetailVC: UIViewController {

    var meme: GetImageVC.Meme!
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.detailLabel.text = self.meme.topText + self.meme.bottomText
        
        self.tabBarController?.tabBar.isHidden = true
        
        self.detailImageView!.image = self.meme.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
