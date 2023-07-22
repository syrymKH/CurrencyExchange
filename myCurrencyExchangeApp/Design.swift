//
//  Design.swift
//  myCurrencyExchangeApp
//
//  Created by Syrym Khamzin on 16.03.2023.
//


import Foundation
import UIKit

class DesignClassColor {
    
    static let shared = DesignClassColor()
    
    func setRGBColor(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
}

class DesignFirstView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 7
        self.layer.shadowColor = DesignClassColor.shared.setRGBColor(r: 195, g: 187, b: 244).cgColor
        self.backgroundColor = DesignClassColor.shared.setRGBColor(r: 195, g: 187, b: 244)
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        self.layer.shadowOpacity = 0.6
        self.layer.shadowRadius = 7
    }
}

class DesignSecondView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 7
        self.layer.shadowColor = DesignClassColor.shared.setRGBColor(r: 182, g: 221, b: 252).cgColor
        self.backgroundColor = DesignClassColor.shared.setRGBColor(r: 182, g: 221, b: 252)
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        self.layer.shadowOpacity = 0.6
        self.layer.shadowRadius = 7
    }
}

class DesignThirdView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 7
        self.layer.shadowColor = DesignClassColor.shared.setRGBColor(r: 238, g: 189, b: 223).cgColor
        self.backgroundColor = DesignClassColor.shared.setRGBColor(r: 238, g: 189, b: 223)
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        self.layer.shadowOpacity = 0.6
        self.layer.shadowRadius = 7
    }
}

class DesignUpdateButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 7
        self.layer.shadowColor = DesignClassColor.shared.setRGBColor(r: 182, g: 221, b: 252).cgColor
        self.backgroundColor = DesignClassColor.shared.setRGBColor(r: 182, g: 221, b: 252)
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        self.layer.shadowOpacity = 0.6
        self.layer.shadowRadius = 7
        
    }
}

