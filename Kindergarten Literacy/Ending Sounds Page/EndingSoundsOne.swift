//
//  EndingSounds1.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/12/21.
//

import UIKit
import AVFoundation
import SwiftUI

class EndingSoundsOne: UIViewController {

    @IBOutlet var buttons: [UIButton]!

    @IBOutlet var quizButton: UIButton!
    
    
    var bcdfArray = ["b", "d", "f", "g", "k", "l", "m", "n", "p", "r", "s", "t", "x", "z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()

        
        for button in buttons {
            button.setBackgroundImage(UIImage(named: "level_button_0_star"), for: .normal)
            button.contentHorizontalAlignment = .left
            button.contentVerticalAlignment = .top
            button.titleEdgeInsets = UIEdgeInsets(top: 20, left: 40, bottom: 0, right: 0)
        }
        initButtonBackground()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.initButtonBackground() // refresh star every second
        })
        
//        UIView.animate(withDuration: 1,
//                       delay: 0,
//                       options: [UIView.AnimationOptions.autoreverse, UIView.AnimationOptions.repeat],
//                       animations: {
//                        self.quizButton.frame = CGRect(x: 200, y: 400, width: 42, height: 42)
//                        self.quizButton.frame = CGRect(x: 200, y: 400, width: 38, height: 38)
//                       }, completion: nil)
    }
    
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

    
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
//        let vc = UIHostingController(rootView: PuzzleView())
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds_quiz_vc") as! EndingSoundsQuiz
        vc.passedInLetter = bcdfArray.randomElement()
        vc.passedInArray = bcdfArray
        audioPlayer?.stop()
        present(vc, animated: true)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playIntroMessage()
    }
    
    //play sound
    var audioPlayer: AVAudioPlayer?
    
    func playIntroMessage() {
        let pathToSound = Bundle.main.path(forResource: "00_Button_Audio_Win_A_Green_Ball_(Alphabet_Letters)", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            
        }
    }
    
    
    //main button function to learn page
    @IBAction func toLearnEndingSoundsPage(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "learn_ending_sounds_vc") as! LearnEndingSounds
        vc.passedInLetter = (sender as! UIButton).titleLabel!.text!
        vc.passedInArray = bcdfArray
        present(vc, animated: true)
        audioPlayer?.stop()
    }
    
    
    // set stars for each button
    // set up array of images with different star count. Easy to add/remove
    let i0 = UIImage(named: "level_button_0_star")
    let i1 = UIImage(named: "level_button_1_star")
    let i2 = UIImage(named: "level_button_2_star")
    let i3 = UIImage(named: "level_button_3_star")
    let i4 = UIImage(named: "level_button_4_star")
    let i5 = UIImage(named: "level_button_5_star")
    var starsImages: [UIImage?] { return [self.i0, self.i1, self.i2, self.i3, self.i4, self.i5] }

    
    func initButtonBackground() {
        // get savefile from userdefaults
        let endingSoundsStarCount = UserDefaults.standard.dictionary(forKey: "endingSoundsStarCount")
        for button in buttons {
            let currentLetter = button.titleLabel!.text!
            let currentStarCount = endingSoundsStarCount![currentLetter] as! Int
            button.setBackgroundImage(starsImages[currentStarCount], for: .normal)
        }
    }

}
