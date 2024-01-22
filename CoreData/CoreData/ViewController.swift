//
//  ViewController.swift
//  CoreData
//
//  Created by 김혜란 on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func getAllItems() {
        do {
            let items = try context.fetch(ToDoListItem.fetchRequest())
        }
        catch {
            //error
        }
    }
    
    func createItem() {
        let newItem = ToDoListItem(content: context)
        newItem.createdAt = Data()
        
        do {
            try context.save()
        }
        catch{
            
        }
    }
    
    func deleteItem() {
        context.delete(item)
        
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
    func updateItem(item: ToDoListItem, newName: String) {
        item.name = newName
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
}

