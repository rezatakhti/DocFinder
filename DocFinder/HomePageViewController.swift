//
//  ViewController.swift
//  DocFinder
//
//  Created by Reza Takhti on 2/29/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    let padding: CGFloat = 16
    
    let topView = MainTopView()
    let doctorsView = DoctorsNearbyView()
    let doctorsLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Doctors nearby"
        label.font = UIFont.systemFont(ofSize: 25, weight: .light)
        label.textColor = .labelIT
        return label
    }()
    
    let searchButton = DFButton(title: "Search for doctors")
        
    let blueLineSeparator1 = BlueLineView()
    let blueLineSeparator2 = BlueLineView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackgroundDF
        setupTopView()
        setupDoctorsLabel()
        setupDoctorsView()
        setupSearchButton()
    }
    
    private func setupSearchButton(){
        view.addSubview(blueLineSeparator2)
        view.addSubview(searchButton)
        
        NSLayoutConstraint.activate([
            blueLineSeparator2.topAnchor.constraint(equalTo: doctorsView.bottomAnchor),
            blueLineSeparator2.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: padding),
            blueLineSeparator2.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -padding),
            blueLineSeparator2.heightAnchor.constraint(equalToConstant: 1),
            
            searchButton.topAnchor.constraint(equalTo: blueLineSeparator2.bottomAnchor, constant: padding),
            searchButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            searchButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        
    }
    
    private func setupDoctorsView(){
        view.addSubview(doctorsView)
        
        NSLayoutConstraint.activate([
            doctorsView.topAnchor.constraint(equalTo: blueLineSeparator1.bottomAnchor, constant: padding),
            doctorsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            doctorsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            doctorsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2)
        ])
    }
    
    private func setupDoctorsLabel(){
        view.addSubview(doctorsLabel)
        view.addSubview(blueLineSeparator1)
        
        NSLayoutConstraint.activate([
            doctorsLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: padding * 2),
            doctorsLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: padding),
            doctorsLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -padding),
            doctorsLabel.heightAnchor.constraint(equalToConstant: 25),
            
            blueLineSeparator1.topAnchor.constraint(equalTo: doctorsLabel.bottomAnchor, constant: padding/2),
            blueLineSeparator1.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: padding),
            blueLineSeparator1.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -padding),
            blueLineSeparator1.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    private func setupTopView(){
        view.addSubview(topView)
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45)
        ])
        
    }


}

