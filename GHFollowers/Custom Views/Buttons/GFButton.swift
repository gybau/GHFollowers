//
//  GFButton.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 17/01/2023.
//

import UIKit

class GFButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(color: UIColor, title: String) {
        self.init(frame: .zero)
        set(color: color, title: title)
    }
    
    
    private func configure() {
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints   = false
    }
    
    
    final func set(color: UIColor, title: String) {
        configuration?.title = title
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        
    }
}
