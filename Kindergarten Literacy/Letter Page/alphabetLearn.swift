//
//  alphabetLearn.swift
//  Kindergarten Literacy
//
//  Created by TigerSHe on 2021/2/27.
//

import UIKit
import AVFoundation

class alphabetLearn: UIViewController {
    
    //content arrays
    //numbered as 0, 1, 2, 3 in order
    var bmrasArray = ["b", "m", "r", "a", "s", "t", "g", "n", "i", "p", "c", "h", "f", "o", "d", "l", "k", "u", "j", "w", "e", "y", "z", "v", "q", "x"]
    var bmrasCapArray = ["B"]
    var abcdeArray = ["a"]
    var abcdeCapArray = ["A"]
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArrayID: Int!
    
    //global variables
    var currentArray: Array<String>!
    @IBOutlet var displayButton: UIButton!;
    
    //audio
    var audioPlayer: AVAudioPlayer?
    
    // reference to different storyboards
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    //startup logic, assign content arrays + display text
    override func viewDidLoad() {
        super.viewDidLoad()
        displayButton.setTitle(passedInLetter, for: .normal)
        switch passedInArrayID {
        case 0:
            currentArray = bmrasArray
        case 1:
            currentArray = bmrasCapArray
        case 2:
            currentArray = abcdeArray
        case 3:
            currentArray = abcdeCapArray
        default:
            currentArray = bmrasArray
        }
        playLetterAudio(letter: passedInLetter)
        // Do any additional setup after loading the view.
    }
    
    //buttons for changing display letter
    @IBAction func nextLetter(_ sender: Any) {
        let curr: String = displayButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index < currentArray.count - 1 {
            displayButton.setTitle(currentArray[index + 1], for: .normal)
        }
        playLetterAudio(letter: displayButton.currentTitle!)
    }
    
    @IBAction func prevLetter(_ sender: Any) {
        let curr: String = displayButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index > 0 {
            displayButton.setTitle(currentArray[index - 1], for: .normal)
        }
        playLetterAudio(letter: displayButton.currentTitle!)
    }
    
    //play audio for each letter
    @IBAction func tapLetter(_ sender: Any) {
        playLetterAudio(letter: displayButton.currentTitle!)
    }
    
    func playLetterAudio(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_A", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_B", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
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
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
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
