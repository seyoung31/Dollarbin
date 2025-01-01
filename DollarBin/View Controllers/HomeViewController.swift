//
//  HomeViewController.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/10.
//

import UIKit
import SwiftUI
import Firebase
import FirebaseDatabase

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var PageTitle: UILabel!
    @IBOutlet weak var PageSubTitle: UILabel!
    @IBOutlet weak var barcodeCashVstack: UIStackView!
    @IBOutlet weak var barcodeImage: UIImageView!
    @IBOutlet weak var cashLabel: UILabel!
    @IBOutlet weak var LocationSubTitle: UILabel!
    
    
    @IBAction func searchButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.google.com/search?tbm=lcl&q=%EC%9E%AC%ED%99%9C%EC%9A%A9%EB%8F%84%EC%9B%80%EC%84%BC%ED%84%B0&rflfq=1&stick=H4sIAAAAAAAAAB2RO05DQQxFlQJEnQcUr8oSfP33LtgCQkEUSEFkAxTpqfmIgg6JggWwIkj2gAdpNB-Pfe_xzMnxfAp1TevJqkgpK4F5cpBQMRd5WIEyeJ5MNGEcBlWGRajNSzinC6hXQkcFrWmVGSlCXpUlyhHDycIYaaQSSamoEWUiZ61QiEXbeuU8ZUIRRQwy8b5xav-S3itrQ2lHEDTqMeyisS0F0VJdr0ptmw64R8O0yDyhNS2LAIqKjFKZl8HkbgqX0T4bomPU_YTmSEpz1xo9ZbfoFmWd6KJFg97J--Aws4bSaIlh1Ows7pnlRkU2QAe2sSSXer9d8D-TqaqxijNjjLR54iEoJv2AQdXfAHwtFj-L84v15u52vbq83W5W2_Xl_dXN6npz_350tn_7PDy97p8_fh93-5eH_e77sPv6AzJHaCffAQAA&sa=X&ved=2ahUKEwim9bmjkJD3AhViIqYKHd1MCvUQ63UoAXoECE8QAg&biw=1440&bih=793&dpr=2&pccc=1#rlfi=hd:;si:;mv:[[33.5286781,126.68772569999997],[33.3132047,126.1926834]]")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBOutlet weak var cardTableView: UITableView!
    
    var Centernames = Recyclingcenters.names
    var Centeraddress = Recyclingcenters.address
    var opentime = Recyclingcenters.opentime
    var closetime = Recyclingcenters.closetime
    
    var filter:CIFilter!
    var ref:DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
        generateBarCode()
        
    }
    
    // How many rows in the tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opentime.count
    }
    
    // Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(name: Centernames[indexPath.row], address: Centeraddress[indexPath.row], opentime: opentime[indexPath.row], closetime: closetime[indexPath.row])
        
        return cell
    }
    
    
    func setUpElements() {
        Utilities.styleTitle(PageTitle)
        Utilities.styleSubTitle(PageSubTitle)
        Utilities.styleCashLabel(cashLabel)
        Utilities.styleSubTitle(LocationSubTitle)
    }
    
    func generateBarCode() {
        
        var text = randomString(length: 10)
        var data = text.data(using: .ascii, allowLossyConversion: false)

        filter = CIFilter(name: "CICode128BarcodeGenerator")
        filter.setValue(data, forKey: "inputMessage")

        let image = UIImage(ciImage: filter.outputImage!)
        
        barcodeImage.image = image
        
    }
    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
}
