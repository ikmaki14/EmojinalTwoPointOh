//
//  ViewController.swift
//  EmojinalTwoPointOh
//
//  Created by Isabella Maki on 7/25/19.
//  Copyright © 2019 Isabella Maki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["♈️": "🔥🔥", "♉️": "💪💪", "♊️": "👯‍♀️👯‍♀️", "♋️": "😭😭", "♌️": "🌟🌟", "♍️": "🥇🥇", "♎️": "⚖️⚖️", "♏️": "😈😈", "♐️": "🥊🥊", "♑️": "🤑🤑", "♒️": "🦄🦄", "♓️": "👩‍🎨👩‍🎨"];

    @IBAction func showMessage(_ sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Your horoscope: ", message: "message", preferredStyle: UIAlertController.Style.alert);
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        
        present(alertController, animated: true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

