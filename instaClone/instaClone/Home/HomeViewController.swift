//
//  HomeViewController.swift
//  instaClone
//
//  Created by 김혜란 on 1/9/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //테이블 뷰의 델리게이트 = 나다 = 테이블뷰에 나를 띄워라, 데이터 소스도 = 나다
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none        //클릭했을 때 색 반전 없앰
        
        
        //테이블 뷰에 등록하는 것
        //닙을 사용해서 아이텐티 파이어를 넣고 변수를 선언해주고
        let feedNib = UINib(nibName: "FeedTableViewCell", bundle: nil)
        //해당 변수를 테이블 뷰에 등록해준다.
        tableView.register(feedNib, forCellReuseIdentifier: "FeedTableViewCell")
        
        
        let storyNib = UINib(nibName:"StoryTableViewCell", bundle: nil)
        tableView.register(storyNib, forCellReuseIdentifier: "StoryTableViewCell")
    }
}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "StoryTableViewCell", for: indexPath) as? StoryTableViewCell
            else {
                return UITableViewCell()
            }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as? FeedTableViewCell
            else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none //테이블별 구분선 없앰
            return cell
        }
    }
    
    //테이블뷰 높이 설정
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80
        } else {
            return 600
        }
    }
    
    //셀이 보여질 때
    func tableView(_ tableViwe:UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let tableViewCell = cell as? StoryTableViewCell else {
            return
        }
        tableViewCell.setCollectionViewDataSourceDelegate(dataSoureDelegate: self, forRow: indexPath.row)
    }
}

//컬렉션 뷰 델리게이트 지정
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as? StoryCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 60)
    }
}
