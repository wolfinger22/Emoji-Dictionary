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
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.!!
        
        CoolTableView.dataSource = self
        CoolTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.category = "Smiley"
        emoji1.definition = "This is the unguilty Emoji"
        emoji1.birthYear = 2009
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.category = "Objects"
        emoji2.definition = "This is the Shitface Emoji"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🏔"
        emoji3.category = "Landscape"
        emoji3.definition = "This is the Mountain Emoji"
        emoji3.birthYear = 2000
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😅"
        emoji4.category = "Smiley"
        emoji4.definition = "This is the 'Ups' Emoji"
        emoji4.birthYear = 2003
            
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😡"
        emoji5.category = "Smiley"
        emoji5.definition = "This is the angry Emoji"
        emoji5.birthYear = 2006
            
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😜"
        emoji6.category = "Smiley"
        emoji6.definition = "This is the Twinkle Emoji"
        emoji6.birthYear = 2002
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

