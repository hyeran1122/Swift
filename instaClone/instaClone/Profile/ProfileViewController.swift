//
//  ProfileViewController.swift
//  instaClone
//
//  Created by 김혜란 on 1/16/24.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        
        
    }
    
    
    // MARK: - Action
    
    // MARK: - Helpers
    
    private func setupCollectionView() {
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        //셍성한 셀을 콜렌션 뷰에 등록해줌
        //프로필 셀 등록
        profileCollectionView.register(
            UINib(
                nibName: "ProfileCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier)
        
        //포스트 셀 등록
        profileCollectionView.register(
            UINib(
                nibName: "PostCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
    }
}


extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    //섹션의 수
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default :
            return 24
        }
    }
    
    //셀 생성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let section = indexPath.section
        switch section {
        case 0 :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCollectionViewCell.identifier, for: indexPath) as?  ProfileCollectionViewCell else {
                fatalError("셀 캐스팅 실패")
            }
            return cell
            
        default :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCollectionViewCell.identifier, for: indexPath) as?  PostCollectionViewCell else {
                fatalError("셀 캐스팅 실패")
            }
            return cell
        }
    }
}

//센션 크기
extension ProfileViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let section = indexPath.section
        switch section {
        case 0 :
            return CGSize(width: collectionView.frame.width, height: 159)
        default :
            let side = CGFloat((collectionView.frame.width / 3) - (4/3))
            return CGSize(width: side, height: side)
            
        }
    }
    //아이템 사이의 간격을 조절
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0:
            return CGFloat(0)
        default:
            return CGFloat(1)
        }
    }
    
    //각 행간 간격 조절
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0:
            return CGFloat(0)
        default:
            return CGFloat(1)
        }
    }
}
