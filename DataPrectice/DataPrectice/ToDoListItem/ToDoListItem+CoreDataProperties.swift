//
//  ToDoListItem+CoreDataProperties.swift
//  DataPrectice
//
//  Created by 김혜란 on 1/22/24.
//
//

import Foundation
import CoreData


extension ToDoListItem {
    
    //데이터를 가져오는 클래스.
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }
    
    
    //실제 저장 속성
    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?

}

extension ToDoListItem : Identifiable {

}
