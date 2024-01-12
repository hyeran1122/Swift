//
//  FeedTableViewCell.swift
//  instaClone
//
//  Created by 김혜란 on 1/9/24.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewUserProfile: UIImageView!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var buttonIsHeart: UIButton!
    @IBOutlet weak var buttonIsBookMark: UIButton!
    @IBOutlet weak var labelHowNanyLike: UILabel!
    @IBOutlet weak var labelFeed: UILabel!
    @IBOutlet weak var imageViewMyProfile: UIImageView!
    
    //좋아요 버튼
    @IBAction func actionIsHeart(_ sender: Any) {
        if buttonIsHeart.isSelected {
            buttonIsHeart.isSelected = false
        } else {
            buttonIsHeart.isSelected = true
        }
    }
    
    //북마크 버튼
    @IBAction func actionButtonMark(_ sender: Any) {
        if buttonIsBookMark.isSelected {
            buttonIsBookMark.isSelected = false
        } else {
            buttonIsBookMark.isSelected = true
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageViewUserProfile.layer.cornerRadius = 12.5
        imageViewUserProfile.clipsToBounds = true           //코너라운드 줬을 떄 안에 이미지도 같이 잘리게 하기
        
        imageViewMyProfile.layer.cornerRadius = 12.5
        imageViewMyProfile.clipsToBounds = true
        
        //커스텀 라벨
        let fontSize = UIFont.boldSystemFont(ofSize: 9)
        let attributerStr = NSMutableAttributedString(string: labelFeed.text ?? "")
        attributerStr.addAttribute(.font, value : fontSize, range: NSRange.init(location: 0, length: 3))
        
        labelFeed.attributedText = attributerStr
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
