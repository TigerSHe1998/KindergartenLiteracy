//
//  ViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var LettersButton: UIButton!

    @IBOutlet weak var VowelsButton: UIButton!

    @IBOutlet weak var BeginningSoundButton: UIButton!

    @IBOutlet weak var EndingSoundButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    // this is not how to implement a back button!!!
    //    @IBAction func returnButtonTapped(_ sender: Any) {
    //        let vc = storyboard?.instantiateViewController(identifier: "main_vc") as! ViewController
    //        present(vc, animated: true)
    //    }
    
    // you can copy these code below for home/puzzle/coin, back button logic please use UNWIND SEGUE (search google if you don't know)
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
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
            // error handling
        }
    
        
    }
}



