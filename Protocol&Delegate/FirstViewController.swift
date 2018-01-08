//
//  FirstViewController.swift
//  Protocol&Delegate
//
//  Created by Robert Shrestha on 8/30/17.
//  Copyright © 2017 robert. All rights reserved.
//

import UIKit


//hello
class FirstViewController: UIViewController,DataSendDelegate {
    func sendDataDelegate(data: String) {
        self.textLblTxt.text = data
    }


    @IBOutlet var textLblTxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextBtnPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as!SecondViewController
        vc.dataSendDelegate=(self as DataSendDelegate)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
