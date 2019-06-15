//
//  SentMemeTableVC.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 13/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit


class SentMemeTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var memes: [GetImageVC.Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func createMeme(_ sender: Any) {
       createMeme()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (memes.count)
        return memes.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableView") as? TableView{
            let image = memes[indexPath.row]
            cell.upateTableViews(Meme: image)
            return cell
        }else{
            return TableView()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailVC") as! MemeDetailVC
        
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
