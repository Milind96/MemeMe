 //
 //  Meme.swift
 //  MemeMe 1.0
 //
 //  Created by milind shelat on 28/05/19.
 //  Copyright © 2019 milind shelat. All rights reserved.
 //
 
 import Foundation
 import UIKit
 
 extension GetImageVC {
    
    
    struct Meme {
        let topText : String
        let bottomText : String
        let originalImage : UIImage
        let memedImage : UIImage
    }
    
    func save() {
        // Create the meme
        let meme = Meme(topText: topTextField.text!, bottomText: bottomTextField.text!, originalImage: self.imagePickerView.image!, memedImage: generateMemedImage())
            
            // Add it to the memes array in the Application Delegate
            let object = UIApplication.shared.delegate
            let appDelegate = object as! AppDelegate
            appDelegate.memes.append(meme)
    }
    
    func generateMemedImage() -> UIImage {
        
       self.topToolbar.isHidden = true
       self.bottomToolbar.isHidden = true
        
        // Render view to an image
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let memedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        self.topToolbar.isHidden = false
        self.bottomToolbar.isHidden = false
        
        return memedImage
    }
    
    func cancelBtnWasPressed(){
        imagePickerView?.image = nil
        setupTextField(tf: topTextField, text: "TOP")
        setupTextField(tf: bottomTextField, text: "BOTTOM")
        shareBtn.isEnabled = false
    }
    
 }
