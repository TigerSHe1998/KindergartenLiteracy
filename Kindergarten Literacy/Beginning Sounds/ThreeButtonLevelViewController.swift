//
//  ThreeButtonLevelViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/2.
//

import Foundation
import UIKit

class ThreeButtonLevelViewController: UIViewController {
    
    var array = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    
    var desiredLabelThree: String!
    
    @IBOutlet  var myLabelThree: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabelThree.text = desiredLabelThree
        // Do any additional setup after loading the view.
    }

    func showText(txt: String) {
        myLabelThree.text = txt
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myLabelThree.text!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myLabelThree.text!)!;
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
