//
//  ViewController.swift
//  hustle-mode
//
//  Created by hima attalla on 8/15/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var hustleLbl: UILabel!
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        cloudHolder.isHidden = false
        let path = Bundle.main.url(forResource: "hustle-on", withExtension: "wav")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: path!)
        }
        catch {
            print("error")
        }
        audioPlayer.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 10, width: 414, height: 761)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
    }
    
}

