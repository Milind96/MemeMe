//
//  CollectionViewController.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 13/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit



class CollectionViewController: UIViewController, UICollectionViewDataSource, UITableViewDelegate {
    
    var memes: [GetImgViewController.Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var collectionView: CollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print (memes.count)
        return memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView", for:indexPath) as? CollectionView {
            let image = memes[indexPath.row]
            cell.sentImage.image = image.memedImage
            return cell
        }else{
            return CollectionView()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
