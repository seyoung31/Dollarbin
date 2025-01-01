//
//  ProfileViewController.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/10.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var supportButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    func setUpElements() {
        profileImage.image = UIImage(named:"profile.jpg")
        Utilities.styleTitle(pageTitle)
        Utilities.styleFilledButton(accountButton)
        Utilities.styleFilledButton(historyButton)
        Utilities.styleFilledButton(settingButton)
        Utilities.styleFilledButton(supportButton)
    }

}
