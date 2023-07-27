//
//  ShoppingCustomTableViewCell.swift
//  TableViewPractice
//
//  Created by ChaewonMac on 2023/07/27.
//

import UIKit

class ShoppingCustomTableViewCell: UITableViewCell {

    
    
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var ShoppingContentLabel: UILabel!
    @IBOutlet var starButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
