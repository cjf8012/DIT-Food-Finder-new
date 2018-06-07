import UIKit

class FoodFinderTableViewController: UITableViewController {
    
    var foodStoreNames = ["늘해랑","아딸","번개반점","왕짜장","토마토도시락","홍콩반점"]
    var foodStoreImages = ["01","02","03","04","05","06"]
    var foodStoreAddress = ["부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동","부산시 진구 양정동"]
    var foodStoreType = ["돼지국밥", "분식집", "중국집", "중국집", "도시락", "중국집"]
    var foodStoreTel = ["051-860-1111", "051-860-1112", "051-860-1113", "051-860-1114", "051-860-1115", "051-860-1116"]
    var foodStoreMenu = ["돼지국밥 순대국밥 내장국밥" , "떡볶이 순대 튀김" , "짜장면 짬뽕 탕수육", "짜장면 짬뽕 탕수육", "돈불와퍼 양념치킨도시락 간장치킨도시락", "짜장면 짬뽕 탕수육"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "DIT 배달통"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodStoreNames.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "re", for: indexPath) as!FoodFinderTableViewCell

        cell.cellImage.image = UIImage(named: foodStoreImages[indexPath.row])
        cell.cellName.text = foodStoreNames[indexPath.row]
        cell.cellAddress.text = foodStoreAddress[indexPath.row]
        cell.cellType.text = foodStoreType[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(foodStoreNames[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as!
                DetailViewController
                destinationController.cellType = foodStoreType[indexPath.row]
                destinationController.cellAddress = foodStoreAddress[indexPath.row]
                destinationController.cellImage = foodStoreImages[indexPath.row]
                destinationController.cellAddress = foodStoreAddress[indexPath.row]
                destinationController.cellMenu = foodStoreMenu[indexPath.row]
                destinationController.cellTel = foodStoreTel[indexPath.row]
            }
            
        }
    }

}
