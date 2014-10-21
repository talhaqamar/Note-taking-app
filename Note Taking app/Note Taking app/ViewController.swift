//
//  ViewController.swift
//  Note Taking app
//
//  Created by Talha Qamar on 10/20/14.
//  Copyright (c) 2014 Talha Qamar. All rights reserved.
//

import UIKit
import CoreData

<<<<<<< HEAD
class ViewController: UIViewController,UITextViewDelegate{
    @IBOutlet var textnote : UITextView!
    
   
=======
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
>>>>>>> 16c6d2083f91aa5d7feb4b04058e526df445a95b
    
    @IBAction func save()
    {   var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context: NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUSer = NSEntityDescription.insertNewObjectForEntityForName("Notepad", inManagedObjectContext: context) as NSManagedObject
        newUSer.setValue(""+textnote.text, forKey: "note")
        context.save(nil)
        println("save")
    }
<<<<<<< HEAD
    @IBAction func load()
    {
        var appDel1:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context1: NSManagedObjectContext = appDel1.managedObjectContext!
        var request1 = NSFetchRequest(entityName: "Notepad")
        request1.returnsObjectsAsFaults = false
        var results1:NSArray = context1.executeFetchRequest(request1, error: nil)!
        if(results1.count > 0)
        {   var res1 = results1[results1.count-1] as NSManagedObject
            textnote.text = res1.valueForKey("note") as String
            // for res in results{ println(res) }
        }
            
        else { println("error") }
    }

    func textField(textFeld : UITextView) -> Bool { textnote.resignFirstResponder()
     return true}
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    self.view.endEditing(true)
    
    }
      override func viewDidLoad() {
        super.viewDidLoad()
        textnote.delegate = self
        load()
=======
      override func viewDidLoad() {
        super.viewDidLoad()
>>>>>>> 16c6d2083f91aa5d7feb4b04058e526df445a95b
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

