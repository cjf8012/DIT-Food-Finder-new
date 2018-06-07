import UIKit

class FoodFinderTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView! {
        didSet {
            cellImage.layer.cornerRadius = 36.5
            cellImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellAddress: UILabel!
    @IBOutlet weak var cellType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
