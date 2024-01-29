//
//  ViewController.swift
//  MemberList
//
//  Created by 김혜란 on 1/29/24.
//

import UIKit

class ViewController: UIViewController {

    //테이블뷰, 테이블뷰를 만들면 뷰를 따로 만들필요가 없다.
    private let tableview = UITableView()
    
    var memberListManager = MamberlistManager()     //맴버 정보에 접근 가능

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white       //테이블뷰 뒷 배경을 하얗게 처리
        setupDatas()
        setupTableView()
        setupNaviBar()
        setupTableViewConstraints()
    }
    
    func setupNaviBar() {
        title = "회원 목록"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
//        self.navigationItem.rightBarButtonItem = self.plusButton
        
    }
    
    func setupTableView() {
        tableview.dataSource = self
        tableview.rowHeight = 60    //셀 높이 설정
    }
    
    func setupDatas() {
        memberListManager.makeMembersListDatas()
    }
    
    func setupTableViewConstraints() {
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }


}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberListManager.getMembersList().count //배열의 수만큼 셀 수가 생성 됨
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
