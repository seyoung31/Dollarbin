//
//  DonationCell.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/11.
//

import UIKit

class DonationCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // set up the cell
    func configure(picture: UIImage, type: String, title: String, description: String) {
        pictureView.image = picture
        typeLabel.text = type
        titleLabel.text = title
        descriptionLabel.text = description
    }
}
