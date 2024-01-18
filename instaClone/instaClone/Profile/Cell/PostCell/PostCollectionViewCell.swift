//
//  PostCollectionViewCell.swift
//  instaClone
//
//  Created by 김혜란 on 1/18/24.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var PostImageView: UIImageView!
    
    static let identifier = "PostCollectionViewCell"
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    public func setupdata() {
        //이미지뷰의 이미지를 업로드한다.
    }
}
