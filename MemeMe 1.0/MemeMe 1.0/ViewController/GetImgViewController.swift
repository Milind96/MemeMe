//
//  GetImgViewController.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 22/05/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setPadding(){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
}

class GetImgViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate {

    
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var shareBtn: UIBarButtonItem!
    @IBOutlet weak var topToolbar: UIToolbar!
    @IBOutlet weak var bottomToolbar: UIToolbar!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Calling Textfield Properties
        
        topTextFieldProperties()
        bottomTextFieldProperties()
        
        
        // Textfield delegate
        
        self.topTextField.delegate = self
        self.bottomTextField.delegate = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Camera button will be enabled only if it detects a camera
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
        subscribeToKeyboardNotifications()
        if imagePickerView.image == nil {
            shareBtn.isEnabled = false
        }
        else{
            shareBtn.isEnabled = true
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        unsubscribeFromKeyboardNotifications()
    }

    
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        crop()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        // Allows us to access camera
        crop()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    // topTextFieldProperties function
    func topTextFieldProperties(){
        topTextField.defaultTextAttributes = memeTextAttributes
        topTextField.text = "TOP"
        topTextField.textAlignment = .center
        topTextField.setPadding()

    }
    // bottomTextFieldProperties function
    func bottomTextFieldProperties(){
        bottomTextField.defaultTextAttributes = memeTextAttributes
        bottomTextField.text = "BOTTOM"
        bottomTextField.textAlignment = .center
        bottomTextField.setPadding()
    }
    

    @IBAction func Share(_ sender: Any) {
        
        let sharedImage = generateMemedImage()
        // generate the meme
        let activityController = UIActivityViewController(activityItems:    [sharedImage], applicationActivities: nil)
        self.present(activityController, animated: true, completion: nil)
        activityController.completionWithItemsHandler = { (activity, success, items, error) in
            self.save()
        }
    }
    
    // MARK: - memeTextAttributes
    
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.strokeColor: UIColor.black,
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
    ]
    
    
    @IBAction func cancelBtnPressed(_ sender: UIButton) {
        cancelBtnWasPressed()
    }
    
   
    
}




