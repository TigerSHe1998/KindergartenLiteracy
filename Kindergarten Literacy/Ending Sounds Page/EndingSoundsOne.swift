//
//  EndingSounds1.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/12/21.
//

import UIKit
import AVFoundation

class EndingSoundsOne: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()

        
        for button in buttons {
            button.layer.cornerRadius = 20
            button.backgroundColor = UIColor .white
            // button.setImage((UIImage (named: "cub")), for: .normal)
//            let buttonWidth = button.frame.width
//            let imageWidth = button.imageView!.frame.width
//            button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 100, bottom: 10, right: -100)
//            button.titleEdgeInsets = UIEdgeInsets(top: 10, left: -200, bottom: 10, right: 200)
//            button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)

            //loadImage(button: button, titleLetter: button.currentTitle!)
        }
        
    }
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    
    func loadImage(button: UIButton, titleLetter: String) {
        switch titleLetter {
        case "b","B":
            button.setBackgroundImage((UIImage (named: "cub")), for: .normal)
        case "d","D":
            button.setBackgroundImage((UIImage (named: "bird")), for: .normal)
//        case "f","F":
//            showPicturesForLetter(firstPic: "scarf", secondPic: "thief", thirdPic: "chef")
//        case "g","G":
//            showPicturesForLetter(firstPic: "frog", secondPic: "plug", thirdPic: "bug")
//        case "k","K":
//            showPicturesForLetter(firstPic: "elk", secondPic: "pick", thirdPic: "shark")
//        case "l","L":
//            showPicturesForLetter(firstPic: "owl", secondPic: "goal", thirdPic: "sail")
//        case "m","M":
//            showPicturesForLetter(firstPic: "swim", secondPic: "clam", thirdPic: "storm")
//        case "n","N":
//            showPicturesForLetter(firstPic: "rain", secondPic: "van", thirdPic: "fin")
//        case "p","P":
//            showPicturesForLetter(firstPic: "drop", secondPic: "soap", thirdPic: "jeep")
//        case "r","R":
//            showPicturesForLetter(firstPic: "door", secondPic: "tiger", thirdPic: "polar-bear")
//        case "s","S":
//            showPicturesForLetter(firstPic: "bus", secondPic: "dress", thirdPic: "grapes")
//        case "t","T":
//            showPicturesForLetter(firstPic: "net", secondPic: "paint", thirdPic: "tent")
//        case "x","X":
//            showPicturesForLetter(firstPic: "fox", secondPic: "ax", thirdPic: "six")
//        case "z","Z":
//            showPicturesForLetter(firstPic: "quiz", secondPic: "prize", thirdPic: "freeze")
        default:
        break
        }
    }
    
    
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
        vc.passedInArrayID = 0
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
