//
//  ViewController.swift
//  welcomePage
//
//  Created by Cyberjaya 4 iTrain on 16/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txt_username: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {

        let myDefaults = UserDefaults.standard
        
        if myDefaults.bool(forKey: "successful login") {
           
        //redirect
        if let nextView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
                
        navigationController?.pushViewController(nextView, animated: true)
            
            }
            
        }
    }
 
    @IBAction func action_submit(_ sender: Any) {
        if self.txt_username.text == "yuchin" {
            //ToDo.save login
            let myDefaults = UserDefaults.standard
            
            
            myDefaults.set(true, forKey: "SuccessLogin")
            myDefaults.set(self.txt_username.text, forKey: "username")

            
            myDefaults.synchronize() //this will commit the save
            
            
            
            //ToDo. redirect to page
            if let nextView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
                
                navigationController?.pushViewController(nextView, animated: true)
                
                
            }
            
            
            
            
            
        }
        else {
            
            //wrong authentication
            
            let myAlert = UIAlertController(title: "Login Failed", message: "please try agian", preferredStyle: .alert)
            
            
            let okButton = UIAlertAction(title: "I will try it again", style: .default, handler: nil)
            
            myAlert.addAction(okButton)
 
            //pop this alert box
            present(myAlert, animated: true, completion: nil)
        
        }
        
    }
    
}

