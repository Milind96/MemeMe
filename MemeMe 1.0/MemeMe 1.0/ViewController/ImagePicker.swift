//
//  ImagePicker.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 24/05/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import Foundation
import UIKit

let imagePicker = UIImagePickerController()

extension GetImgViewController  {

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Loads the image to UIImageView
        
        if let image = info[.editedImage] as? UIImage{
            self.imagePickerView.image = image
        }else if let image = info[.originalImage] as? UIImage{
            self.imagePickerView.image = image
        }
      
        
        picker.dismiss(animated: true, completion: nil)
        
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    func crop(){
        imagePicker.allowsEditing = true
    }
    
}
