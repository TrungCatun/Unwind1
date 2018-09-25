//
//  ViewController.swift
//  Unwind1
//
//  Created by Trung on 6/18/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pass = segue.destination as? DetailViewController
        pass?.data = inputTextField.text
    }
    @IBAction func unwind (for unwindSegue: UIStoryboardSegue) {
        if let back = unwindSegue.source as? DetailViewController{
            inputTextField.text = back.data
        }
    }
}

