//
//  OneButtonLevelViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/2.
//

import Foundation
import UIKit


class OneButtonLevelViewController: UIViewController {
    
    var array = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    
    var desiredLabelOne: String!
    
    @IBOutlet  var myLabelOne: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabelOne.text = desiredLabelOne
    }
    
    func showText(txt: String) {
        myLabelOne.text = txt
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myLabelOne.text!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myLabelOne.text!)!;
        if i < 20 {
            showText(txt: array[i + 1])
        }
    }
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "beginning_sounds_quiz_vc") as! BeginningSoundsQuizViewController
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
