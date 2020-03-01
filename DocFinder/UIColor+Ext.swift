//
//  UIColor+Ext.swift
//  DocFinder
//
//  Created by Reza Takhti on 2/29/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

extension UIColor {
    static var labelIT : UIColor {
        if #available(iOS 13.0, *){
            return .label
        } else {
            return .black
        }
    }
    
    static var darkenOverlay: UIColor {
        if #available(iOS 13.0, *){
            return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        } else {
            return .black
        }
    }
    
    static var blueDF : UIColor {
        return UIColor(red: 42/255, green: 110/255, blue: 255/255, alpha: 1)
    }
    
    static var systemBlueDF : UIColor {
        if #available(iOS 13.0, *){
            return .systemBlue
        } else {
            return .blue
        }
    }
    
    static var systemGray6DF : UIColor {
        if #available(iOS 13.0, *){
            return .systemGray6
        } else {
            return .white
        }
    }
    
    static var systemBackgroundDF : UIColor {
        if #available(iOS 13.0, *){
            return .systemBackground
        } else {
            return .white
        }
    }
}
