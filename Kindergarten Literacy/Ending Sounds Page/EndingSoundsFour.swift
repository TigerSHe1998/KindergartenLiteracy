//
//  EndingSounds4.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/12/21.
//

import UIKit
import AVFoundation

class EndingSoundsFour: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()

        for button in buttons {
            button.layer.cornerRadius = 20
            button.backgroundColor = UIColor .systemBlue
        }
    }
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds_quiz_vc")
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
    
    // stop playing sound
    func stopPlayingMessage() {
        audioPlayer?.stop()
    }
    
    
    //main button function to learn page
    @IBAction func toLearnEndingSoundsPage(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "learn_ending_sounds_vc") as! LearnEndingSounds
        vc.passedInLetter = (sender as! UIButton).titleLabel!.text!
        vc.passedInArrayID = 3
        present(vc, animated: true)
        stopPlayingMessage()
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
