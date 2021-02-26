//
//  EndingSounds2.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/12/21.
//

import UIKit

class EndingSounds2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
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
