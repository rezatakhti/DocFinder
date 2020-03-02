//
//  MainInsuranceView.swift
//  DocFinder
//
//  Created by Reza Takhti on 3/1/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class MainInsuranceView : UIView {
    let personalizeLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    let insuranceLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    let providerButton : TransparentButton
    
    init(hasSelectedInsurance: Bool){
        if hasSelectedInsurance {
            #warning("implement selected insurance case")
            providerButton = TransparentButton(text: "Change provider")
            //personalizeLabel.text =
        } else {
            personalizeLabel.text = "PERSONALIZE DOC FINDER"
            insuranceLabel.text = "Select Insurance"
            providerButton = TransparentButton(text: "Add provider")
        }
        super.init(frame: .zero)
        setupViews()
    }
    
    private func setupViews(){
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(personalizeLabel)
        addSubview(insuranceLabel)
        addSubview(providerButton)
        
        NSLayoutConstraint.activate([
            personalizeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            personalizeLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            personalizeLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            personalizeLabel.heightAnchor.constraint(equalToConstant: 21),
            
            insuranceLabel.topAnchor.constraint(equalTo: personalizeLabel.bottomAnchor, constant: 8),
            insuranceLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            insuranceLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            insuranceLabel.heightAnchor.constraint(equalToConstant: 35),
            
            providerButton.topAnchor.constraint(equalTo: insuranceLabel.bottomAnchor, constant: 8),
            providerButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            providerButton.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 16),
            providerButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
