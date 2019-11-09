//
//  ViewController.swift
//  SeagueExample
//
//  Created by Sidharth Nayyar on 11/8/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
   
    @IBAction func onClickButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ShowResult") as? ResultViewController           //identifier is the story board ID name of  next view controller
        
        vc?.data = txtName.text!// pass the value in put to next view controller
        lblName.text = vc?.data
        vc?.delegate = self
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
   
}

extension ViewController:passDataToVc{
    func passData2(str:String) {
        lblName.text = str
    }
    
    func passData(str:String) {
        txtName.text = str
        //lblName.text = str
    }
    // extenstion to bring back the same data back and forth
}
