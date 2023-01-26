//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 24/01/2023.
//

import UIKit

enum ItemInfoType {
    case repos, gists, followers, following
}


class GFItemInfoView: UIView {

    var symbolImageView     = UIImageView()
    var titleLabel          = GFTitleLabel(textAlignment: .left, fontSize: 14)
    var countLabel          = GFTitleLabel(textAlignment: .left, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubviews(symbolImageView, titleLabel, countLabel)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor = .systemGreen
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            symbolImageView.widthAnchor.constraint(equalTo: symbolImageView.heightAnchor),
            
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor)
            //countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    
    func set(itemInfoType: ItemInfoType, withCount count: Int) {
        switch itemInfoType {
        case .repos:
            symbolImageView.image   = SFSymbols.repos
            titleLabel.text         = "Public Repos"
        case .gists:
            symbolImageView.image   = SFSymbols.gists
            titleLabel.text         = "Public Gists"
        case .followers:
            symbolImageView.image   = SFSymbols.followers
            titleLabel.text         = "Followers"
        case .following:
            symbolImageView.image   = SFSymbols.following
            titleLabel.text         = "Following"
        }
        countLabel.text             = String(count)
    }
}
