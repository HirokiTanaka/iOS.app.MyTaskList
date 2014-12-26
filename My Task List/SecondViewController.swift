//
//  SecondViewController.swift
//  My Task List
//
//  Created by HirokiTanaka on 2014/12/25.
//  Copyright (c) 2014年 HirokiTanaka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func btnAdd_Click(sender: UIButton) {
        taskMgr.addTask(txtName.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtName.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    // IOS Touch Function
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }
    
    // UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
}

