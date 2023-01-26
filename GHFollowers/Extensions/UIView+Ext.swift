//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 26/01/2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
