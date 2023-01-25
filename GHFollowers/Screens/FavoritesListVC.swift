//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 17/01/2023.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .failure(let error):
                break
            case .success(let favorites):
                print(favorites)
            }
        }
    }
}
