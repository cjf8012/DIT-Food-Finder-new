import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTableView: UITableView!
    
    var cellName = ""
    var cellType = ""
    var cellAddress = ""
    var cellImage = ""
    var cellTel = ""
    var cellMenu = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = cellName
        detailTableView.delegate = self
        detailTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailTableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "종류 : " + cellType
            return cell
        case 1:
            cell.textLabel?.text = "메뉴 : " + cellMenu
            return cell
        case 2:
            cell.textLabel?.text = "주소 : " + cellAddress
            return cell
        default:
            cell.textLabel?.text = "전화번호 : " + cellTel
            return cell
        }
    }
}
