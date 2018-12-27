//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Wolf Wittmund on 2018-12-27.
//  Copyright © 2018 Wolf Wittmund. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableviewdataSource, UITableViewdelegate {

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.!!
        
        TableView.dataSource = self
        TableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

