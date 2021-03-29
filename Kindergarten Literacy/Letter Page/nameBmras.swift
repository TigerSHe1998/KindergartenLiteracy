//
//  nameBmras.swift
//  Kindergarten Literacy
//
//  Created by TigerSHe on 2021/2/26.
//

import UIKit
import AVFoundation

class nameBmras: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()
        initButtonBackground()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.initButtonBackground() // refresh star every second
        })
        // Do any additional setup after loading the view.
    }
    
    // reference to different storyboards
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playIntroMessage()
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        let vc = letterStoryBoard.instantiateViewController(identifier: "alphabetquiz_vc") as! alphabetQuiz
        vc.passedInLetter = "b"
        vc.passedInArrayID = 0 // 0 for bmras letter array
        present(vc, animated: true)
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
            //bruh
        }
    }
    
    
    //main button function to learn page
    @IBAction func toAlphabetLearnPage(_ sender: Any) {
        audioPlayer?.stop()
        let vc = letterStoryBoard.instantiateViewController(identifier: "alphabetlearn_vc") as! alphabetLearn
        vc.passedInLetter = (sender as! UIButton).titleLabel!.text!
        vc.passedInArrayID = 0 // 0 for bmras letter array
        present(vc, animated: true)
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

    // collection of all buttons in current page
    @IBOutlet var levelButtons: [UIButton]!
    
    func initButtonBackground() {
        // get savefile from userdefaults
        let letterStarCount = UserDefaults.standard.dictionary(forKey: "letterStarCount")
        for button in levelButtons {
            let currentLetter = button.titleLabel!.text!
            let currentStarCount = letterStarCount![currentLetter] as! Int
            button.setBackgroundImage(starsImages[currentStarCount], for: .normal)
        }
    }
    
//    // init background image to 0 stars first
//    @IBAction func initTest(_ sender: Any) {
//        bButton.setBackgroundImage(starsImages[0], for: .normal)
//    }
//
//    @IBAction func addStar(_ sender: Any) {
//        let currBG = bButton.backgroundImage(for: .normal)
//        let index = starsImages.firstIndex(of: currBG)!
//        if index < starsImages.count - 1 {
//            bButton.setBackgroundImage(starsImages[index + 1], for: .normal)
//        }
//    }
//
//    @IBAction func removeStar(_ sender: Any) {
//        let currBG = bButton.backgroundImage(for: .normal)
//        let index = starsImages.firstIndex(of: currBG)!
//        if index > 0 {
//            bButton.setBackgroundImage(starsImages[index - 1], for: .normal)
//        }
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
