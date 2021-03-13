//
//  VowelViewController.swift
//  Kindergarten Literacy
//
//  Created by Haoyun Xu on 1/30/21.
//

import Foundation
import UIKit

class VowelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func VowelBlackATapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_a_vc") as! VowelBlackAViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelBlackETapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_e_vc") as! VowelBlackEViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelBlackITapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_i_vc") as! VowelBlackIViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelBlackOTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_o_vc") as! VowelBlackOViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelBlackUTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "black_vowel_u_vc") as! VowelBlackUViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelGreenATapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "green_vowel_a_vc") as! VowelGreenAViewController
        present(vc, animated: true)
    }
    
    @IBAction func VowelGreenITapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "green_vowel_i_vc") as! VowelGreenIViewController
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
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "quiz_vc") as! VowelQuizViewController
        present(vc, animated: true)
    }
    
    @IBAction func vowelsButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowels_vc") as! VowelViewController
        present(vc, animated: true)
    }
    
    
}
