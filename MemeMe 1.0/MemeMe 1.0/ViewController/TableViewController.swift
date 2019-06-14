//
//  TableViewController.swift
//  MemeMe 1.0
//
//  Created by milind shelat on 13/06/19.
//  Copyright © 2019 milind shelat. All rights reserved.
//

import UIKit



class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var memes: [GetImgViewController.Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var tableView: UITableView!
    
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
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
