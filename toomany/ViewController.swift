//
//  ViewController.swift
//  toomany
//
//  Created by adhoc on 11/09/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UITextField!
    @IBOutlet weak var friendLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(sender: AnyObject) {
    
        
        
      if messageLabel.text==""{
        print("enter message")
        }else{
            let appDel:AppDelegate=UIApplication.sharedApplication().delegate as! AppDelegate
            let context:NSManagedObjectContext=appDel.managedObjectContext
            
            let message=NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context)
            message.setValue(messageLabel.text, forKey: "text")
            message.setValue("dimanche", forKey: "date")
            let friendEntity=NSEntityDescription.entityForName("Friend", inManagedObjectContext: context)
        let friend=NSManagedObject(entity: friendEntity!, insertIntoManagedObjectContext: context)
            friend.setValue(friendLabel.text, forKey: "name")
            message.setValue(friend, forKey: "friend")
            do{
                try context.save()
                print("message inserted")
            }catch let error{
                print(error)
            }
        }
    }
    
    
    @IBAction func jocker(sender: AnyObject) {
        
        let appDel=UIApplication.sharedApplication().delegate as! AppDelegate
        let context=appDel.managedObjectContext
        
        let request=NSFetchRequest(entityName: "Message")
        request.predicate=NSPredicate(format: "friend.name=%@", "Kamal")
        request.returnsObjectsAsFaults=false
        do{
        let results=try context.executeFetchRequest(request)
            if results.count>0{
            print("there are some results")
                for result in results{
                print(result.valueForKey("text"))
                }
            }else{
               print("no result found")
            }
        }catch{
         print("oops problem")
        }
    }
    
    

}

