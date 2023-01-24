//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 24/01/2023.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
