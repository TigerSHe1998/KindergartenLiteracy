//
//  BeginningSoundsOneButtonViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/2.
//

import Foundation
import UIKit
import AVFoundation

class BeginningSoundsOneButtonViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        let pathToSound = Bundle.main.path(forResource: "00_Button_Audio_Win_A_Green_Ball_(Alphabet_Letters)", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            
        }
        initButtonBackground()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.initButtonBackground() // refresh star every second
        })
        // Do any additional setup after loading the view.
    }
    
    let i0 = UIImage(named: "level_button_0_star")
    let i1 = UIImage(named: "level_button_1_star")
    let i2 = UIImage(named: "level_button_2_star")
    let i3 = UIImage(named: "level_button_3_star")
    let i4 = UIImage(named: "level_button_4_star")
    let i5 = UIImage(named: "level_button_5_star")
    var starsImages: [UIImage?] { return [self.i0, self.i1, self.i2, self.i3, self.i4, self.i5] }

    // collection of all buttons in current page
    @IBOutlet var levelButtons: [UIButton]!
    
    func initButtonBackground() {
        // get savefile from userdefaults
        let letterStarCount = UserDefaults.standard.dictionary(forKey: "BS")
        for button in levelButtons {
            let currentLetter = button.titleLabel!.text!.capitalized
            let currentStarCount = letterStarCount![currentLetter] as! Int
            button.setBackgroundImage(starsImages[currentStarCount], for: .normal)
        }
    }
    
    @IBAction func oneButtonLevel(_ sender: Any) {
        audioPlayer!.stop()
        let vc = storyboard?.instantiateViewController(identifier: "oneButtonLevel_vc") as! OneButtonLevelViewController
        vc.desiredLabelOne = (sender as! UIButton).titleLabel!.text!
        present(vc, animated: true)
    }
    
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }


    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "beginning_sounds_quiz_vc") as! BeginningSoundsQuizViewController
        vc.desiredLabelOne = "b"
        present(vc, animated: true)
    }
    
    @IBAction func coin(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    @IBAction func puzzle(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
}

