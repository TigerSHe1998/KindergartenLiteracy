//
//  VowelLetterViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 2/13/21.
//

import Foundation
import UIKit

class VowelLetterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RealVowelLetter(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "real_vowel_letter_vc") as! RealVowelViewController
        vc.desiredLabelOne = (sender as! UIButton).titleLabel!.text!
        vc.desiredWordOne = 
        present(vc, animated: true)
    }
    
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }


    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowel_quiz_vc") as! BeginningSoundsQuizViewController
        present(vc, animated: true)
    }
    
    @IBAction func coin(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    @IBAction func puzzle(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
}
