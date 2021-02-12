//
//  FourButtonLevelViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/5.
//

import Foundation
import UIKit

class FourButtonLevelViewController: UIViewController {

    var array = ["B", "M", "R", "S", "T", "G", "N", "P", "C", "H", "F", "D", "L", "K", "J", "W", "Y", "Z", "V", "Q", "X"]

    var desiredLabelFour: String!
    
    @IBOutlet  var myLabelFour: UILabel!;

    override func viewDidLoad() {
        super.viewDidLoad()
        myLabelFour.text = desiredLabelFour
    }
    
    func showText(txt: String) {
        myLabelFour.text = txt
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myLabelFour.text!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myLabelFour.text!)!;
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
