//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 24/01/2023.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavBar()
        
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    func configureNavBar() {
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        navigationController?.navigationBar.prefersLargeTitles = false
        title = username
    }
}
