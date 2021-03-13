//
//  ButtomViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 2/9/21.
//

import Foundation
import UIKit


class ButtonViewController: UIViewController {
    
    var array = ["a", "e", "i", "o", "u"]
    
    @IBOutlet var desiredLabel: String!

    
    @IBOutlet  var myLabel: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = desiredLabel
    }
    
    func showText(txt: String) {
        myLabel.text = txt
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myLabel.text!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myLabel.text!)!;
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
    
    @IBAction func coin(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    @IBAction func puzzle(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
}

