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
    @IBOutlet weak var DefintionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        EmojiLabel.text = emoji.stringEmoji
        categoryLabel.text = "Category: \(emoji.category)"
        DefintionLabel.text = emoji.definition
        ageLabel.text = "Birth year: \(emoji.birthYear)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
