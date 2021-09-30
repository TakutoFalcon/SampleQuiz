//
//  ViewController.swift
//  SampleQuiz
//
//  Created by 糸川拓磨 on 2021/08/31.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBAction func settingButtonAction(_ sender: Any) {
    }
    
    var mikeysound:AVAudioPlayer?
    var kensound:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let soundURL = Bundle.main.url(forResource: "ken", withExtension: "mp3") {
            do {
                kensound = try AVAudioPlayer(contentsOf: soundURL)
                kensound?.play()
            } catch {
                print("error")
            }
        }
        
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        
    }
    @IBAction func btnAction(sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "mikey", withExtension: "mp3") {
            do {
                mikeysound = try AVAudioPlayer(contentsOf: soundURL)
                mikeysound?.play()
            } catch {
                print("error")
            }
            kensound?.stop()
        }
        
    }
}

