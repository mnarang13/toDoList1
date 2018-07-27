//
//  ViewController.swift
//  ToDoList1
//
//  Created by Spence on 7/26/18.
//  Copyright © 2018 Maya Narang. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
        if (textField.text != "") {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context)
            newTask.taskName = textField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            textField.text = ""
            textField.resignFirstResponder()
        }
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

