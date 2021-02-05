//
//  ViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LettersButton: UIButton!

    @IBOutlet weak var VowelsButton: UIButton!

    @IBOutlet weak var BeginningSoundButton: UIButton!

    @IBOutlet weak var EndingSoundButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func lettersButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "letters_vc") as! letterMainPage
        present(vc, animated: true)
    }
    
    
    @IBAction func vowelsButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowels_vc") as! VowelViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func beginningSoundsButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "beginning_sounds_vc") as! BeginningSoundsViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func endingSoundsButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ending_sounds_vc") as! EndingSoundsViewController
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
    
    
}



