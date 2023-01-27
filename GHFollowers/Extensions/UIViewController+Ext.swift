//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 18/01/2023.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alert = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alert.modalPresentationStyle = .overFullScreen
        alert.modalTransitionStyle = .crossDissolve
        present(alert, animated: true)
    }
    
    
    func presentDefaultAlert() {
        let alert = GFAlertVC(title: "Oops", message: "Unable to complete your request at this time. Please try again", buttonTitle: "Ok")
        alert.modalPresentationStyle = .overFullScreen
        alert.modalTransitionStyle = .crossDissolve
        present(alert, animated: true)
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
