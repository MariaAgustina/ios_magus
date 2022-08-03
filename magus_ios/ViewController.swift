//
//  ViewController.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 28/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func testButtonPressed(_ sender: UIButton) {
        let classvsstruct = ClassVsStruct()
        classvsstruct.classSample()
        classvsstruct.structSample()

    }
}

