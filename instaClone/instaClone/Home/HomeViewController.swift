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

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //디큐 =. 재사용 셀
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as? FeedTableViewCell
        else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none //테이블별 구분선 없앰
        return cell
    }
    
    //테이블뷰 높이 설정
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}
