//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Wolf Wittmund on 2018-12-27.
//  Copyright © 2018 Wolf Wittmund. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var CoolTableView: UITableView!
    
    var emojis = ["😇","😅","💩","🐺","☺️","😡","😜"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.!!
        
        CoolTableView.dataSource = self
        CoolTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

