//
//  ToDoListItem+CoreDataProperties.swift
//  CoreData
//
//  Created by 김혜란 on 1/22/24.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    //저장?
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension ToDoListItem : Identifiable {

}
