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
        myTextView.text = "Accessing the web site..."
        let mgr = AFHTTPRequestOperationManager()
        mgr.responseSerializer = AFHTTPResponseSerializer()
        mgr.GET("http://www.reddit.com", parameters: nil,
            success: { (paramA: AFHTTPRequestOperation!, paramB: AnyObject!) -> Void in
                self.myTextView.text = ""
            },
            failure: { (operation: AFHTTPRequestOperation!, error: NSError!) -> Void in
                self.myTextView.text = error.localizedDescription
            })
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

