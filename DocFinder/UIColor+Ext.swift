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
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.75)
                } else {
                    return UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
                }
            }
        } else {
            return .black
        }
    }
    
    static var blueDF : UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (UITraitCollection : UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return UIColor(red: 0/255, green: 58/255, blue: 180/255, alpha: 1)
                } else {
                    return UIColor(red: 42/255, green: 110/255, blue: 255/255, alpha: 1)
                }
            }
        } else {
            return UIColor(red: 42/255, green: 110/255, blue: 255/255, alpha: 1)
        }
        
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
    
    static var systemGray3DF : UIColor {
        if #available(iOS 13.0, *){
            return .systemGray3
        } else {
            return .white
        }
    }
    
    static var systemGrayDF : UIColor {
        if #available(iOS 13.0, *){
            return .systemGray
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
