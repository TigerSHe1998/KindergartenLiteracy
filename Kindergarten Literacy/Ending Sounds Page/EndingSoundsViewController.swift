//
//  EndingSoundsViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//

import UIKit
import SwiftUI

class EndingSoundsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    
    @IBAction func endingSoundsOneButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds1_vc")
        present(vc, animated: true)
    }
    
    
    @IBAction func endingSoundsTwoButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds2_vc")
        present(vc, animated: true)
    }
    
    
    @IBAction func endingSoundsThreeButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds3_vc")
        present(vc, animated: true)
    }
    
    
    @IBAction func endingSoundsFourButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds4_vc")
        present(vc, animated: true)
    }
    
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
//        let vc = UIHostingController(rootView: PuzzleView())
//        vc.rootView.dismiss = {vc.dismiss(animated: true, completion: nil)}
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    

}
