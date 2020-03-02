//
//  MyDoctorsButton.swift
//  DocFinder
//
//  Created by Reza Takhti on 3/1/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class MyDoctorsButton : UIButton {
    
    let myDoctorsLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 35, weight: .heavy)
        label.text = "My Doctors"
        label.textColor = .blueDF
        return label
    }()
    
    let viewLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .light)
        label.text = "View or remove saved doctors"
        label.textColor = .systemGrayDF
        return label
    }()
    
    let arrowImageView : UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Arrow"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let blueLineView = BlueLineView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        setupViews()
    }
    
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor.systemGray3DF : UIColor.systemGray6DF
        }
    }
    
    private func setupViews() {
        addSubview(myDoctorsLabel)
        addSubview(blueLineView)
        addSubview(viewLabel)
        addSubview(arrowImageView)
        
        NSLayoutConstraint.activate([
            myDoctorsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            myDoctorsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            myDoctorsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -48),
            myDoctorsLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
            
            blueLineView.topAnchor.constraint(equalTo: myDoctorsLabel.bottomAnchor, constant: 8),
            blueLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            blueLineView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 48),
            blueLineView.heightAnchor.constraint(equalToConstant: 1),
            
            viewLabel.topAnchor.constraint(equalTo: blueLineView.bottomAnchor, constant: 8),
            viewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            viewLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -48),
            viewLabel.heightAnchor.constraint(equalToConstant: 18),
            
            arrowImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            arrowImageView.topAnchor.constraint(equalTo: topAnchor),
            arrowImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            arrowImageView.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        
    }
    
    private func setupButton(){
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 20
        layer.masksToBounds = true
        backgroundColor = .systemGray6DF
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
