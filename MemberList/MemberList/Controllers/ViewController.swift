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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self 
        
        setupTableViewConstraints()
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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
