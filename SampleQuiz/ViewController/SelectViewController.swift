//
//  SelectViewController.swift
//  SampleQuiz
//
//  Created by 糸川拓磨 on 2021/09/01.
//

import UIKit
import AVFoundation

class SelectViewController: UIViewController {
    @IBOutlet weak var level1Button: UIButton!
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level3Button: UIButton!
    
    var selectTag = 0
    var mituyasound:AVAudioPlayer?
    var kazutorasound:AVAudioPlayer?
    var chihuyusound:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        level1Button.layer.borderWidth = 2
        level1Button.layer.borderColor = UIColor.black.cgColor
        
        level2Button.layer.borderWidth = 2
        level2Button.layer.borderColor = UIColor.black.cgColor
        
        level3Button.layer.borderWidth = 2
        level3Button.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLebel = selectTag
    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
    
    @IBAction func btnAction(sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "mituya", withExtension: "mp3") {
            do {
                mituyasound = try AVAudioPlayer(contentsOf: soundURL)
                mituyasound?.play()
            } catch {
                print("error")
            }
        }
    }
    
    @IBAction func btnAction2(sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "kazutora", withExtension: "mp3") {
            do {
                kazutorasound = try AVAudioPlayer(contentsOf: soundURL)
                kazutorasound?.play()
            } catch {
                print("error")
            }
        }
    }
    
    @IBAction func btnAction3(sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "tihuyu", withExtension: "mp3") {
            do {
                chihuyusound = try AVAudioPlayer(contentsOf: soundURL)
                chihuyusound?.play()
            } catch {
                print("error")
            }
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
