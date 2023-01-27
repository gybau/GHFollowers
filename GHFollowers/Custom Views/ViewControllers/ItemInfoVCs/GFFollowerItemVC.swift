//
//  GFFollowersItemVC.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 24/01/2023.
//

import UIKit

protocol FollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {

    weak var delegate: FollowerItemVCDelegate!
    
    
    init(user: User, delegate: FollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
