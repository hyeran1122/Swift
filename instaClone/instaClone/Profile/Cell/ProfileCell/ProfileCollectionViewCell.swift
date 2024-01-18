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
    @IBOutlet weak var postingCountLabel: UILabel!
    @IBOutlet weak var followerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
    }

    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 88/2
        addProfileImageView.layer.cornerRadius = 24/2       //설정한 크기의 반절을 줘야 원이된다.
        
        profileAditButton.layer.cornerRadius = 5
        
        profileAditButton.layer.borderColor = UIColor.lightGray.cgColor        //cg컬러하는 이유는 코어그레픽이라는 라이브러리르 사용해서 보더컬러를 주기 때문에
        profileAditButton.layer.borderWidth = 1
        
        
        profileImageView.layer.borderColor = UIColor.darkGray.cgColor
        profileImageView.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 3
        addFriendButton.layer.borderColor = UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
        
        //랜덤으로 프로필 상 숫자 넣어주기
        [postingCountLabel,followerCountLabel,followingCountLabel]
            .forEach { $0.text = "\(Int.random(in: 0...10))"}
    }
}
