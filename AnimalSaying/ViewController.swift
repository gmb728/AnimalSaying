//
//  ViewController.swift
//  AnimalSaying
//
//  Created by Chang Sophia on 2018/9/18.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var Player: AVPlayer?
    
    @IBOutlet weak var sayingButton: UIButton!
    @IBOutlet weak var sayingLabel: UILabel!
    @IBOutlet weak var barkGeorge: UIButton!
    @IBOutlet weak var barkGeorgeLabel: UILabel!
    @IBOutlet weak var speedRate: UISlider!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBAction func speedRateSlider(_ sender: UISlider) {
        speedRate.value = roundf(speedRate.value)
    }
    
    let animals = ["🦆", "🐷", "🐴", "🐱", "🐑", "🐐", "🐍", "🐓", "🐭", "🐸", "🦁", "🐮","🐥", "🐘", "🐻","🦅","👩🏻‍🌾"]
    
    
    
//mom
    @IBAction func barkGeorge(_ sender: UIButton) {
        barkGeorgeLabel.text = "Bark, George"
        let speech = AVSpeechUtterance(string: barkGeorgeLabel.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
    }
    
//George
    @IBAction func sayingButton(_ sender: UIButton) {
        emojiLabel.text = animals.randomElement()
        
        
        if emojiLabel.text == "🦆"{
            emojiLabel.text = "🦆"
            sayingLabel.text = "quack,quack,quack"
            speedRate.setThumbImage(UIImage(named: "duckling"), for: UIControl.State.normal)
            self.speedRate.value = 0.7
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
            
        }else if self.emojiLabel.text == "🐷"{
            emojiLabel.text = "🐷"
            sayingLabel.text = "onik, onik, onik"
            speedRate.setThumbImage(UIImage(named: "pig"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "pig"), for: UIControl.State.highlighted)
            self.speedRate.value = 0.5
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if self.emojiLabel.text == "🐱"{
            emojiLabel.text = "🐱"
            sayingLabel.text = "meow, meow, meow"
            speedRate.setThumbImage(UIImage(named: "cat"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "cat"), for: UIControl.State.highlighted)
            self.speedRate.value = 0.5
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        } else if self.emojiLabel.text == "🐴"{
            emojiLabel.text = "🐴"
            sayingLabel.text = "neigh, neigh, neigh"
            speedRate.setThumbImage(UIImage(named: "horse"), for: UIControl.State.normal)
            self.speedRate.value = 0.4
            speedRate.setThumbImage(UIImage(named: "horse"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if self.emojiLabel.text == "🐑"{
             emojiLabel.text = "🐑"
            sayingLabel.text = "baa, baa, baa"
            speedRate.setThumbImage(UIImage(named: "sheep"), for: UIControl.State.normal)
            self.speedRate.value = 0.5
            speedRate.setThumbImage(UIImage(named: "sheep"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if self.emojiLabel.text ==  "🐐"{
            emojiLabel.text = "🐐"
            sayingLabel.text = "mei, mei, mei"
            speedRate.setThumbImage(UIImage(named: "goat"), for: UIControl.State.normal)
            self.speedRate.value = 0.5
            speedRate.setThumbImage(UIImage(named: "goat"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if self.emojiLabel.text == "🐍"{
            emojiLabel.text = "🐍"
            sayingLabel.text = "hiss, hiss, hiss"
            self.speedRate.value = 1
            speedRate.setThumbImage(UIImage(named: "snake"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "snake"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text == "🐓"{
            emojiLabel.text = "🐓"
            sayingLabel.text = "cock, cock, cock"
            self.speedRate.value = 0.7
            speedRate.setThumbImage(UIImage(named: "rooster"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "rooster"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text == "🐭"{
             emojiLabel.text = "🐭"
            sayingLabel.text = "squeak, squeak, squeak"
            self.speedRate.value = 1
            speedRate.setThumbImage(UIImage(named: "mouse"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "mouse"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🐸"{
            emojiLabel.text = "🐸"
            self.speedRate.value = 0.7
            sayingLabel.text = "ribbit, ribbit, ribbit"
            speedRate.setThumbImage(UIImage(named: "frog"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "frog"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🦁"{
            emojiLabel.text = "🦁"
            sayingLabel.text = "roar, roar, roar"
            self.speedRate.value = 0.4
            speedRate.setThumbImage(UIImage(named: "lion"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "lion"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🐮"{
            emojiLabel.text = "🐮"
            sayingLabel.text = "moo, moo, moo"
            self.speedRate.value = 0.2
            speedRate.setThumbImage(UIImage(named: "cow"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "cow"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🐥"{
            emojiLabel.text = "🐥"
            sayingLabel.text = "cluck, cluck, cluck"
            self.speedRate.value = 0.7
            speedRate.setThumbImage(UIImage(named: "chick"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "chick"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🐘"{
            emojiLabel.text = "🐘"
            sayingLabel.text = "pawoo, pawoo, pawoo"
            self.speedRate.value = 0.2
            speedRate.setThumbImage(UIImage(named: "elephant"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "elephant"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🐻"{
            emojiLabel.text = "🐻"
            sayingLabel.text = "growl, growl, growl"
            self.speedRate.value = 0.2
            speedRate.setThumbImage(UIImage(named: "bear"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "bear"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "🦅"{
            emojiLabel.text = "🦅"
            sayingLabel.text = "tweet, tweet, tweet"
            self.speedRate.value = 1
            speedRate.setThumbImage(UIImage(named: "bird"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "bird"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
        }else if
            self.emojiLabel.text ==  "👩🏻‍🌾"{
            emojiLabel.text = "👩🏻‍🌾"
            sayingLabel.text = "Hello"
            self.speedRate.value = 0.5
            speedRate.setThumbImage(UIImage(named: "chu"), for: UIControl.State.normal)
            speedRate.setThumbImage(UIImage(named: "chu"), for: UIControl.State.highlighted)
            let speechUtterance = AVSpeechUtterance(string: sayingLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            speechUtterance.rate = speedRate.value
            synthesizer.speak(speechUtterance)
    
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }


}

