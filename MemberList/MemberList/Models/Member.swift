//
//  Member.swift
//  MemberList
//
//  Created by 김혜란 on 1/29/24.
//

import Foundation
import UIKit

struct Member {
    
    lazy var memberImage: UIImage? = {
        //이름이 없다면 시스템 이미지
        guard let name = name else {
            return UIImage(systemName:"person")
        }
        //해당이름으로 된 이미지가 없다면, 시스템 사람이미지 셋팅
        return UIImage(named:"\(name).png") ?? UIImage(systemName: "person")
    }()
    
    
    static var memberNumbers: Int = 0       //타입 저장 속성, 맴서 순서를 매김.
    
    let memberId: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    
    //생성자 구현
    init(name: String?, age: Int?, phone: String?, address: String?) {
        
        //0일때는 0, 0이 아닐대는 타입저장속서의 절대적 값으로 셋팅(자동순번)
        self.memberId = Member.memberNumbers
        
        //나머지 저장속성은 외부에서 셋팅
        self.name =  name
        self.age = age
        self.phone = phone
        self.address = address
        
        //멤버를 생성한다면, 항상 타입 저장속성의 정수값 +1
        Member.memberNumbers += 1
    }
    
    
    
    
}
