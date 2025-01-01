//
//  CardCell.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/11.
//

import UIKit

class CardCell: UITableViewCell {
 
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    // set up cell
    func configure(name: String, address: String, opentime: String, closetime: String) {
        nameLabel.text = name
        addressLabel.text = address
        timeLabel.text = opentime + " ~ " + closetime
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 5.0
    }
}
