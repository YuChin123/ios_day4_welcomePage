//
//  MainViewController.swift
//  welcomePage
//
//  Created by Cyberjaya 4 iTrain on 16/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let myDefaults = UserDefaults.standard
        
        self.myLabel.text = myDefaults.string(forKey: "username")
        self.myLabel.text = "welcome \(myDefaults.string(forKey: "username")!)"
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
