//
//  LoginPage.swift
//  Kindergarten Literacy
//
//  Created by TigerSHe on 2021/4/11.
//

import UIKit

class LoginPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var inputArray = ["bruh", "bruh", "bruh", "bruh", "bruh"]
    var correctPassword = ["c", "c", "c", "c", "c"]
    @IBOutlet var holders: [UIButton]!
    
    @IBAction func login(_ sender: Any) {
        if inputArray == correctPassword {
            self.dismiss(animated:true, completion: nil)
        }
    }
    
    @IBAction func keys(_ sender: Any) {
        let text = (sender as! UIButton).titleLabel!.text!
        for i in inputArray.indices {
            if inputArray[i] == "bruh" {
                inputArray[i] = text
                holders[i].setBackgroundImage(UIImage(named: text), for: .normal)
                break
            }
        }
        //print(inputArray)
    }
    
    @IBAction func holder(_ sender: Any) {
        (sender as! UIButton).setBackgroundImage(UIImage(named: "empty_input"), for: .normal)
        switch (sender as! UIButton).titleLabel!.text! {
        case "holder1":
            inputArray[0] = "bruh"
        case "holder2":
            inputArray[1] = "bruh"
        case "holder3":
            inputArray[2] = "bruh"
        case "holder4":
            inputArray[3] = "bruh"
        case "holder5":
            inputArray[4] = "bruh"
        default:
            break
        }
        //print(inputArray)
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
