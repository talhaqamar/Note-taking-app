//
//  ViewController.swift
//  Note Taking app
//
//  Created by Talha Qamar on 10/20/14.
//  Copyright (c) 2014 Talha Qamar. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController{
    @IBOutlet weak var textnote : UITextView!
    
   
        @IBAction func load()
    {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context: NSManagedObjectContext = appDel.managedObjectContext!
        var request = NSFetchRequest(entityName: "Notepad")
        request.returnsObjectsAsFaults = false
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        if(results.count > 0)
        {   var res = results[0] as NSManagedObject
            textnote.text = res.valueForKey("note") as String
                     // for res in results{ println(res) }
        }
            
        else { println("error") }
    }
    
    @IBAction func save()
    {   var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context: NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUSer = NSEntityDescription.insertNewObjectForEntityForName("Notepad", inManagedObjectContext: context) as NSManagedObject
        newUSer.setValue(""+textnote.text, forKey: "note")
        context.save(nil)
        println("save")
    }
      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

