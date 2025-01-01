//
//  Utilities.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/08.
//

import Foundation
import UIKit
import SwiftUI

class Utilities {
    
    static func styleTitle(_ label:UILabel) {
        
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 36.0)
        label.textAlignment = .left
    }
    
    static func styleSubTitle(_ label:UILabel) {
        label.textColor = UIColor(red: 11/255, green: 206/255, blue: 131/255, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.textAlignment = .left
    }
    
    static func styleCashLabel(_ label:UILabel) {
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 36.0)
        label.textAlignment = .center
    }
    
    static func styleDescription(_ label:UILabel) {
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.textAlignment = .left
    }

    
    static func styleTextField(_ textfield:UITextField) {
        
        // Create bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height -
                                  2, width: textfield.frame.width, height:2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        // Remove border on text field
        textfield.borderStyle = .none
        
        // Add the line to the text field
        textfield.layer.addSublayer(bottomLine)
    }
    
    static func styleFilledButton(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
        
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
        
    }
    
    static func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
