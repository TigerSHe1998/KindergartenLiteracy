//
//  CoinViewController.swift
//  Kindergarten Literacy
//
//  Created by Haoyun Xu on 1/30/21.
//

import Foundation
import UIKit

class VowelBlackUViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    
    @IBAction func prevButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_o_vc") as! VowelBlackOViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_a_vc") as! VowelBlackAViewController
        present(vc, animated: true)
    }
    
    
}
