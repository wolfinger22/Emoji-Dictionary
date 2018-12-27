//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Wolf Wittmund on 2018-12-27.
//  Copyright © 2018 Wolf Wittmund. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.!!
        
        TableView.dataSource = self
        TableView.delegate = self
    }
    
    func tableView(_ tableview: UITableView,numberOfRowsInSection section : Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "😀"
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

