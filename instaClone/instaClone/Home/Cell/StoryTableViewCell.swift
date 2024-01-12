//
//  StoryTableViewCell.swift
//  instaClone
//
//  Created by 김혜란 on 1/12/24.
//

import UIKit

class StoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setCollectionViewDataSourceDelegate(dataSoureDelegate: UICollectionViewDelegate & UICollectionViewDataSource, forRow row : Int) {
        collectionView.delegate = dataSoureDelegate
        collectionView.dataSource = dataSoureDelegate
        collectionView.tag = row
        let storyNib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
        collectionView.register(storyNib, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        
        //컬렉션 뷰 가로로
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flowLayout.minimumLineSpacing = 12
        
        collectionView.reloadData()
        collectionView.collectionViewLayout = flowLayout
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
