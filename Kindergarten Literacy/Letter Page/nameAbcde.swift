//
//  nameAbcde.swift
//  Kindergarten Literacy
//
//  Created by TigerSHe on 2021/2/27.
//

import UIKit
import AVFoundation

class nameAbcde: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()
        // Do any additional setup after loading the view.
    }
    
    // reference to different storyboards
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playIntroMessage()
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        let vc = letterStoryBoard.instantiateViewController(identifier: "alphabetquiz_vc") as! alphabetQuiz
        vc.passedInLetter = "a"
        vc.passedInArrayID = 2 // 2 for abcde letter array
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
        vc.passedInArrayID = 2 // 2 for abcde letter array
        present(vc, animated: true)
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
