//
//  CoinViewController.swift
//  Kindergarten Literacy
//
//  Created by Haoyun Xu on 1/30/21.
//

import UIKit

class CoinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCoin()

    }
    
    // temporary label for coin count
    @IBOutlet var tempLabel: UILabel!;
    
    func initCoin() {
        tempLabel.text = String(UserDefaults.standard.integer(forKey: "coinCount"))
    }
    
    
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
    
    
}
