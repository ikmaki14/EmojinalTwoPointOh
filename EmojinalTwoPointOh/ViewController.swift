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
    
    let customMessages = ["🔥🔥": ["Don't forget to look after your own well-being in your quest for success.", "Think, therefore exist.", "Don't make any decisions until you've had time to thoroughly think things through."], "💪💪": ["Remember how strong you really are.", "Don't pretend, dare to be.", "You might expect others to treat you how you treat them, and that would hold true in a perfect world, but it doesn't always work that way here."], "👯‍♀️👯‍♀️": ["Never stop being yourself no matter what people say", "Growing...that's your biggest adventure.", "No one knows but you what truly makes you happy, so always follow your heart, even if other people don't see your vision."], "😭😭": ["Remember that people care about you more than you think.", "You learn to smile by crying your heart out.", "Even though living in these times here on earth can feel suffocating and exhausting, we must rise with the tides and learn to be brave in the impending storms."], "🌟🌟": ["You've got a generous soul, but be careful about those with bad intentions.", "You're only great if you can be small.", "Learn to love your life now, and improve upon it as you go."], "🥇🥇": ["Don't be so hard on yourself! You've got this!", "Freedom isn't worth it if you can't make mistakes.", "You have a big heart, but don't let people take advantage of that."], "⚖️⚖️": ["Your advice helps people more than you realize! Keep spreading it!", "May you live every single day of your life.", "Go deep within yourself to figure out what you really want to do with your life, and how you can make a living out of it."], "😈😈": ["Drop your guard from time to time and show people your true self.", "Success is the best revenge.", "Remember, you don't need permission to be awesome, so just go ahead and light the world on fire with your brazen spirit, and the rest will fall into place naturally."], "🥊🥊": ["Don't worry so much about people judging you.", "If you can't love their demons, don't bring them out of hell.", "Remember to just go with the flow, and use the roadblocks as an opportunity to take a detour and enjoy the view from a new path."], "🤑🤑": ["Don't listen to the haters! It comes from a place of envy.", "If you fly your golden wings too close to the sun, you'll melt.", "Capricorn, you have an amazing work ethic, but you can get burnt out if you don't learn to slow down and take time out for yourself."], "🦄🦄": ["Think for yourself, but don't overthink things.", "Trust comes before betrayal.", "You can get what you want in life, but you have to learn to deal with the less fun 'adult' problems, while still striving toward your dreams."], "👩‍🎨👩‍🎨": ["Don't allow doubters and naysayers to stop you from going after what you really want!", "Keep holding things in and you'll drown.", "The longer you ignore them, the worse the problem or situation will be."]];

    @IBAction func showMessage(_ sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text;
        let number = Int.random(in: 0 ..< 3);
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number];
        let alertController = UIAlertController(title: "Your horoscope: ", message: emojiMessage, preferredStyle: UIAlertController.Style.alert);
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        
        present(alertController, animated: true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

