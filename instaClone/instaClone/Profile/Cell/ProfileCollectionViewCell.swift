//
//  ProfileCollectionViewCell.swift
//  instaClone
//
//  Created by 김혜란 on 1/16/24.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ProfileCollectionViewCell"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var addProfileImageView: UIImageView!
    @IBOutlet weak var profileAditButton: UIButton!
    @IBOutlet weak var addFriendButton: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
    }

    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 88/2
        addProfileImageView.layer.cornerRadius = 24/2       //설정한 크기의 반절을 줘야 원이된다.
        
        profileAditButton.layer.cornerRadius = 5
        profileAditButton.layer.borderColor = UIColor.lightGray.cgColor        //cg컬러하는 이유는 코어그레픽이라는 라이브러리르 사요해서 보더컬러를 줘야하기 떄문에
        profileAditButton.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 3
        addFriendButton.layer.borderColor = UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
    }
    
}
