//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 18/01/2023.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad stuff happened", message: error.rawValue, buttonTitle: "Ok")
                return
            case .success(let followers):
                print(followers)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
