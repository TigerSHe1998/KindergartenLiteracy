//
//  RealVowelViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 2/13/21.
//

import Foundation
import UIKit


class RealVowelViewController: UIViewController {
    
    var array = [["a", "bat", "cat", "ax", "bat.png", "cat.png", "ax.png"],
                 ["a ", "ball", "fall", "swan", "ball", "fall", "swan"],
                 ["e", "elf", "bed", "net", "elf", "bed", "net"],
                 ["i", "mittens", "hit", "fish", "mittens", "hit", "fish"],
                 ["i ", "taxi", "yeti", "skis", "taxi", "yeti", "skis"],
                 ["o", "fox", "pot", "hot", "fox", "pot", "hot"],
                 ["u", "bug", "bus", "cut", "bug", "bus", "cut"]]
    
    /*
    
    var word_dict = ["a": ["worldOne", "worldTwo", "worldThree"],
                "a ": ["worldOne", "worldTwo", "worldThree"],
                "e": ["worldOne", "worldTwo", "worldThree"],
                "i": ["worldOne", "worldTwo", "worldThree"],
                "i ": ["worldOne", "worldTwo", "worldThree"],
                "o": ["worldOne", "worldTwo", "worldThree"],
                "u": ["worldOne", "worldTwo", "worldThree"],
     ]
    
 */
    
    
    
    
    var desiredLabelOne: String!
    
    var desiredWordOne: String!
    
    var desiredWordTwo: String!
    
    var desiredWordThree: String!
    
    var desiredImageOne: UIImage!
    
    var desiredImageTwo: UIImage!
    
    var desiredImageThree: UIImage!
    
    
    
    @IBOutlet  var myLabelOne: UILabel!;
    
    @IBOutlet  var myWordOne: UILabel!;
    
    @IBOutlet  var myWordTwo: UILabel!;
    
    @IBOutlet  var myWordThree: UILabel!;
    
    @IBOutlet  var myimageOne: UIImage!;
    
    @IBOutlet  var myimageTwo: UIImage!;
    
    @IBOutlet  var mtimageThree: UIImage!;
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabelOne.text = desiredLabelOne
        myWordOne.text = desiredWordOne
        myWordTwo.text = desiredWordTwo
        myWordThree.text = desiredWordThree
    }
    
    func showText(txt: String) {
        myLabelOne.text = txt
    }
    
    func showWordOne(txt: String) {
        myWordOne.text = txt
    }
    
    func showWordTwo(txt: String) {
        myWordTwo.text = txt
    }
    
    func showWordThree(txt: String) {
        myWordThree.text = txt
    }
    
    @IBAction func prev(_ sender: Any) {
        for index in 0...6 {
            if myLabelOne.text! == array[index][0]{
                let i = index
                if i > 0 {
                    showText(txt: array[i - 1][0]);
                    showWordOne(txt: array[i - 1][1]);
                    showWordTwo(txt: array[i - 1][2]);
                    showWordThree(txt: array[i - 1][3]);
                }
            }
        }
        
    }
    
    @IBAction func next(_ sender: Any) {
        for index in 0...6 {
            if myLabelOne.text! == array[index][0]{
                let i = index
                if i < 6 {
                    showText(txt: array[i + 1][0]);
                    showWordOne(txt: array[i + 1][1]);
                    showWordTwo(txt: array[i + 1][2]);
                    showWordThree(txt: array[i + 1][3]);
                }
            }
        }
        
    }
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowel_quiz_vc") as! VowelQuizViewController
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

