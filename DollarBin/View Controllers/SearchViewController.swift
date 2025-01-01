//
//  SearchViewController.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/10.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var PageTitle: UILabel!
    @IBOutlet weak var cardTableView: UITableView!
    
    // Array for organization list
    var orgType = DonationOrg.orgtype
    var orgNames = DonationOrg.names
    var orgDes = DonationOrg.Description
    var orgPic = DonationOrg.pictures
    var urls = DonationOrg.urls
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url  = URL(string: urls[indexPath.row]) {
            UIApplication.shared.open(url)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orgType.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "donationCell", for: indexPath) as! DonationCell
        
        cell.configure(picture: orgPic[indexPath.row], type: orgType[indexPath.row], title: orgNames[indexPath.row], description: orgDes[indexPath.row])
        
        return cell
    }
    
    func setUpElements() {
        Utilities.styleTitle(PageTitle)
    }

}
