//
//  NewsCell.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/14.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!

    
    func configure(picture: UIImage, title: String) {
        pictureView.image = picture
        newsTitleLabel.text = title
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 5.0
    }
}
