//
//  ExploreViewController.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/10.
//

import UIKit
import SwiftSoup
import Alamofire

class ExploreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var htmlLabel: UILabel!
    
    @IBOutlet weak var newsTableView: UITableView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var pictures = News.pictures
    var titles = News.title
    var urls = News.urls

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: urls[indexPath.row]) {
            UIApplication.shared.open(url)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newscell", for: indexPath) as! NewsCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row])
        
        return cell
    }

    func setUpElements() {
        Utilities.styleTitle(pageTitle)
        Utilities.styleDescription(descriptionLabel)
    }
}


