//
//  Memes.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 14/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func createMeme(){
    let controller = self.storyboard!.instantiateViewController(withIdentifier: "CreateMeme") as! GetImageVC
    
    self.present(controller, animated: true, completion: nil)
    }
    
}
