//
//  ViewController.swift
//  Xylophone
//
//  Created by Barış Yeşilkaya on 22.06.2022.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        playSound(soundLetter: (sender.titleLabel?.text)!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundLetter: String) {
        let url = Bundle.main.url(forResource: soundLetter, withExtension: "wav")

            player = try! AVAudioPlayer(contentsOf: url!)

            player.play()

    }
    
}

