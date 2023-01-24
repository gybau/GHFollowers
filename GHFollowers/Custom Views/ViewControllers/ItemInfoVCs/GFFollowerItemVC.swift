//
//  GFFollowersItemVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 24/01/2023.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
