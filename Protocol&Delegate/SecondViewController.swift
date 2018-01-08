//
//  SecondViewController.swift
//  Protocol&Delegate
//
//  Created by Robert Shrestha on 8/30/17.
//  Copyright © 2017 robert. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func sendDataDelegate(data:String)
}

class SecondViewController: UIViewController {

    @IBOutlet var msgTxtField: UITextField!
    var dataSendDelegate: DataSendDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendBtnPressed(_ sender: Any) {
        if dataSendDelegate != nil{
            if (msgTxtField.text?.characters.count)! > 0{
                let data = msgTxtField.text
                dataSendDelegate?.sendDataDelegate(data: data!)
                self.navigationController?.popViewController(animated: true)
            }
        }
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
