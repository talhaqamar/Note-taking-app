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
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3f32f4e3dfae5e3388c38a16866effef777d28f1
>>>>>>> b91dac00fa7f887696899da7f2269e8bff2c3b3b
class ViewController: UIViewController,UITextViewDelegate{
    @IBOutlet var textnote : UITextView!
    @IBOutlet var textnote1 : UITextView!
    let colorw = ColorWheel()
   
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
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
>>>>>>> ba27ad15a338e6303b879ddb29aac7f540f285a4
>>>>>>> 3f32f4e3dfae5e3388c38a16866effef777d28f1
>>>>>>> b91dac00fa7f887696899da7f2269e8bff2c3b3b
    
    @IBAction func save()
    {   var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context: NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUSer = NSEntityDescription.insertNewObjectForEntityForName("Notepad", inManagedObjectContext: context) as NSManagedObject
        newUSer.setValue(""+textnote.text, forKey: "note")
        context.save(nil)
        println("save")
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> ba27ad15a338e6303b879ddb29aac7f540f285a4
>>>>>>> 3f32f4e3dfae5e3388c38a16866effef777d28f1
>>>>>>> b91dac00fa7f887696899da7f2269e8bff2c3b3b
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
<<<<<<< HEAD
        var col = colorw.randomcolor()
        view.backgroundColor = col
        textnote.backgroundColor = col
=======
<<<<<<< HEAD
        var col = colorw.randomcolor()
        view.backgroundColor = col
        textnote.backgroundColor = col
=======
<<<<<<< HEAD
        var col = colorw.randomcolor()
        view.backgroundColor = col
        textnote.backgroundColor = col
=======
=======
      override func viewDidLoad() {
        super.viewDidLoad()
>>>>>>> 16c6d2083f91aa5d7feb4b04058e526df445a95b
>>>>>>> ba27ad15a338e6303b879ddb29aac7f540f285a4
>>>>>>> 3f32f4e3dfae5e3388c38a16866effef777d28f1
>>>>>>> b91dac00fa7f887696899da7f2269e8bff2c3b3b
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

