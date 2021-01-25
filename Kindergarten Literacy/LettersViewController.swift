//
//  LettersViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//

import UIKit

class LettersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func namesOneButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func namesTwoButtonTapped(_ sender: Any) {
    }
    
    @IBAction func namesThreeButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func namesFourButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func soundsOneButtonTapped(_ sender: Any) {
    }
    
    @IBAction func soundsTwoButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func soundsThreeButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func soundsFourButtonTapped(_ sender: Any) {
    }
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "main_vc") as! ViewController
        present(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
