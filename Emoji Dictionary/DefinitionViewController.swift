//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Wolf Wittmund on 2019-01-02.
//  Copyright © 2019 Wolf Wittmund. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var EmojiLabel: UILabel!
    var emoji = "No Emoji"
    @IBOutlet weak var DefintionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        EmojiLabel.text = emoji
        
        if emoji == "😇" {
        DefintionLabel.text = "The Angelface"
        }
        
        if emoji == "💩" {
            DefintionLabel.text = "Shitface"
        }
        
        if emoji == "😅" {
            DefintionLabel.text = "The feeling guilty Emoji"
        }

        if emoji == "🐺" {
            DefintionLabel.text = "The Wolf"
        }
        
        if emoji == "☺️" {
            DefintionLabel.text = "The brushed cheeks Emoji"
        }
        
        if emoji == "😡" {
            DefintionLabel.text = "The Angry Emoji"
        }
        
        if emoji == "😜" {
            DefintionLabel.text = "Toungue out Emoji"
        }
    // ["😅","💩","🐺","☺️","😡","😜"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
