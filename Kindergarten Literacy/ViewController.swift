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
        let vc = storyboard?.instantiateViewController(identifier: "letters_vc") as! LettersViewController
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
    
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "main_vc") as! ViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "main_vc") as! ViewController
        present(vc, animated: true)
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



