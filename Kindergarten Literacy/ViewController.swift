//
//  ViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//

import UIKit
import AVFoundation
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var LettersButton: UIButton!

    @IBOutlet weak var VowelsButton: UIButton!

    @IBOutlet weak var BeginningSoundButton: UIButton!

    @IBOutlet weak var EndingSoundButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSave()
        // Do any additional setup after loading the view.
    }
    
    // initialize savefile if no save is found. (prevents crash)
    func initSave() {
        if UserDefaults.standard.object(forKey: "firstStartup") == nil {
            resetSave()
            UserDefaults.standard.set(true, forKey: "firstStartup")
        }
    }
    
    // temporary function for the reset save button
    @IBAction func resetSaveButton(_ sender: Any) {
        resetSave()
    }
    
    // function to reset savefile to beginning state
    /* the UserDefaults.standard is a DICTIONARY that is built into swift,
       it will be loaded and saved within the application every time the app launches.
       Make sure you know what you are storing in it,
       because it will be PERMANENT (unless you reset it here)
       !! add your own initial data state here !!
       !! make sure all changed states can be reset here !!
       !! otherwise it would be hard to track !!  */
    
    func resetSave() {
        // set all stars for letter levels to zero
        // this is a dictionary
        let letterStarCount = ["a": 0,
                               "b": 0,
                               "c": 0,
                               "d": 0,
                               "e": 0,
                               "f": 0,
                               "g": 0,
                               "h": 0,
                               "i": 0,
                               "j": 0,
                               "k": 0,
                               "l": 0,
                               "m": 0,
                               "n": 0,
                               "o": 0,
                               "p": 0,
                               "q": 0,
                               "r": 0,
                               "s": 0,
                               "t": 0,
                               "u": 0,
                               "v": 0,
                               "w": 0,
                               "x": 0,
                               "y": 0,
                               "z": 0]
        UserDefaults.standard.set(letterStarCount, forKey: "letterStarCount")
        
        // set all stars for letter levels (Capital) to zero
        // this is a dictionary
        let letterStarCountCap = ["A": 0,
                               "B": 0,
                               "C": 0,
                               "D": 0,
                               "E": 0,
                               "F": 0,
                               "G": 0,
                               "H": 0,
                               "I": 0,
                               "J": 0,
                               "K": 0,
                               "L": 0,
                               "M": 0,
                               "N": 0,
                               "O": 0,
                               "P": 0,
                               "Q": 0,
                               "R": 0,
                               "S": 0,
                               "T": 0,
                               "U": 0,
                               "V": 0,
                               "W": 0,
                               "X": 0,
                               "Y": 0,
                               "Z": 0]
        UserDefaults.standard.set(letterStarCountCap, forKey: "letterStarCountCap")
        
        // set global coin count to zero
        UserDefaults.standard.set(0, forKey: "coinCount")
        
        // add your save data here //
        
        
        // add your save data above //
        
    }
    
    
    
    
    // instantiate letterStoryboard for calling views under letter
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    
    @IBAction func lettersButtonTapped(_ sender: Any) {
        let vc = letterStoryBoard.instantiateViewController(identifier: "letters_vc")
        present(vc, animated: true)
    }
    
    
    @IBAction func vowelsButtonTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "VowelLetter", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "vowels_vc") as! VowelLetterViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func beginningSoundsButtonTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "BeginningSounds", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "beginning_sounds_vc") as! BeginningSoundsViewController
        present(vc, animated: true)
    }
    
    
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    
    @IBAction func endingSoundsButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds_vc")
        present(vc, animated: true)
    }
    
    
    
    // sidebar logic
    
    // back button, please bind this function using unwind segue from the NEXT page
    @IBAction func unwindToHome(_ sender: UIStoryboardSegue) {
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
//    @IBAction func puzzleButtonTapped(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
//        present(vc, animated: true)
//    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = UIHostingController(rootView: PuzzleView())
        vc.rootView.dismiss = {vc.dismiss(animated: true, completion: nil)}
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func SectionTapped(_ sender: UIButton) {

        let pathToSound = Bundle.main.path(forResource: "#Ending_Sounds", ofType:"mp3")!
        let url = URL(fileURLWithPath: pathToSound)
                
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
        }
    
        
    }
}



