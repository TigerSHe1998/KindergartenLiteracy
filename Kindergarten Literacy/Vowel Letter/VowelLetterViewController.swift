//
//  VowelLetterViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 2/13/21.
//

import Foundation
import UIKit

class VowelLetterViewController: UIViewController {
    
    var array = ["a", "a ", "e", "i", "i ", "o", "u"]
    
    let i0 = UIImage(named: "level_button_0_star")
    let i1 = UIImage(named: "level_button_1_star")
    let i2 = UIImage(named: "level_button_2_star")
    let i3 = UIImage(named: "level_button_3_star")
    let i4 = UIImage(named: "level_button_4_star")
    let i5 = UIImage(named: "level_button_5_star")
    var starsImages: [UIImage?] { return [self.i0, self.i1, self.i2, self.i3, self.i4, self.i5] }

    // collection of all buttons in current page
    @IBOutlet var levelButtons: [UIButton]!
    
    func initButtonBackground() {
        // get savefile from userdefaults
        let vowelStarCount = UserDefaults.standard.dictionary(forKey: "vowelStarCount")
        for button in levelButtons {
            let currentLetter = button.titleLabel!.text!
            let currentStarCount = vowelStarCount![currentLetter] as! Int
            button.setBackgroundImage(starsImages[currentStarCount], for: .normal)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for button in levelButtons {
            button.setBackgroundImage(UIImage(named: "level_button_0_star"), for: .normal)
            // button.layer.cornerRadius = 20
            button.contentHorizontalAlignment = .left
            button.contentVerticalAlignment = .top
            button.titleEdgeInsets = UIEdgeInsets(top: 20, left: 40, bottom: 0, right: 0)
        }
        initButtonBackground()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.initButtonBackground() // refresh star every second
        })
        
    }
    
    @IBAction func RealVowelLetter(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "real_vowel_letter_vc") as! RealVowelViewController
        vc.desiredLabelOne = (sender as! UIButton).titleLabel!.text!
        present(vc, animated: true)
    }
    
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }


    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowel_quiz_vc") as! VowelQuizViewController
        vc.passedInLetter = array.randomElement()
        vc.passedInArray = array
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
