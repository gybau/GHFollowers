//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 26/01/2023.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
       backgroundColor       = .systemBackground
       layer.cornerRadius    = 16
       layer.borderWidth     = 2
       layer.borderColor     = UIColor.white.cgColor
       translatesAutoresizingMaskIntoConstraints = false
    }
}
