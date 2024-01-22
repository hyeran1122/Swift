//
//  ViewController.swift
//  DataPrectice
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
    
    func createItem(name:String) {
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do {
            try context.save()
        }
        catch{
            
        }
    }
    
    func deleteItem(item:ToDoListItem) {
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


