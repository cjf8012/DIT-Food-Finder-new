//
//  FoodFinderTableViewController.swift
//  DIT Food Finder
//
//  Created by D7702_10 on 2018. 5. 17..
//  Copyright © 2018년 hsw. All rights reserved.
//

import UIKit

class FoodFinderTableViewController: UITableViewController {
    
    var foodStoreNames = ["늘해랑","아딸","번개반점","왕짜장","토마토도시락","홍콩반점"]
    var foodStoreImages = ["01","02","03","04","05","06"]
    var foodStoreAddress = ["부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동"]
    var foodStoreType = ["돼지국밥", "분식집", "중국집", "중국집", "도시락", "중국집"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "DIT 배달통"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreNames.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "re", for: indexPath) as!FoodFinderTableViewCell

        // Configure the cell...
        cell.cellImage.image = UIImage(named: foodStoreImages[indexPath.row])
        cell.cellName.text = foodStoreNames[indexPath.row]
        cell.cellAddress.text = foodStoreAddress[indexPath.row]
        cell.cellType.text = foodStoreType[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(foodStoreNames[indexPath.row])
        

//        let optionMenu = UIAlertController(title : nil, message : "무엇을 원하시나요", preferredStyle : .actionSheet)
//
//        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
//
//        let callAction = UIAlertAction(title: "전화걸기", style: .default) {
//            (action: UIAlertAction) -> Void in
//            print("전화 걸기 실행!!")
//            let alertMessage = UIAlertController(title: "현재 서비스 구축중", message: "죄송합니다", preferredStyle: .alert)
//            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alertMessage.addAction(okAction)
//            self.present(alertMessage, animated: true)
//
//            }
//
//        //체크박스 만들기
//        let checkinAction = UIAlertAction(title: "체크 인", style: .default) {
//            (action: UIAlertAction) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//        }
//
//        optionMenu.addAction(cancelAction)
//        optionMenu.addAction(callAction)
//        optionMenu.addAction(checkinAction)
//
//        present(optionMenu, animated: true)
        
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail"{
            // optional binding
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as!
                DetailViewController
                //destinationController.cellName = foodStoreNames[indexPath.row]
                destinationController.cellType = foodStoreType[indexPath.row]
                destinationController.cellAddress = foodStoreAddress[indexPath.row]
                destinationController.cellImage = foodStoreImages[indexPath.row]
            }
            
        }
    }

}
