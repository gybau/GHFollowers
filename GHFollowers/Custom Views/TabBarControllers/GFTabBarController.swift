//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 26/01/2023.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.configureWithDefaultBackground()
        
        UITabBar.appearance().tintColor = .systemGreen
        UITabBar.appearance().scrollEdgeAppearance = tabbarAppearance
        
        viewControllers = [createSearchNC(), createFavoritesNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesVC = FavoritesListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
}
