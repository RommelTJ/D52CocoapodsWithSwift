//
//  ViewController.swift
//  D52CocoapodsWithSwift
//
//  Created by Rommel Rico on 2/17/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextView: UITextView!

    @IBAction func doDownloadButton(sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.editable = false
        myTextView.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

