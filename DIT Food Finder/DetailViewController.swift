//
//  DetailViewController.swift
//  DIT Food Finder
//
//  Created by D7703_15 on 2018. 5. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailAddress: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailType: UILabel!
    
    var cellName = ""
    var cellType = ""
    var cellAddress = ""
    var cellImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = cellName
        //detailName.text = cellName
        detailType.text = cellType
        detailAddress.text = cellAddress
        detailImage.image = UIImage(named: cellImage)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
