//
//  ResultViewController.swift
//  SeagueExample
//
//  Created by Sidharth Nayyar on 11/8/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

protocol passDataToVc {
    func passData(str: String)

}

class ResultViewController: UIViewController {

   var data = ""
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtName2: UITextField!
    var lblText = String()
    
    var delegate: passDataToVc!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        txtName2.text = data
        lblResult.text = data
        print(lblResult)
 
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCLickSubmit2(_ sender: UIButton) {
        delegate.passData(str: txtName2.text!)
        //delegate.passData2(str: lblResult.text!)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
