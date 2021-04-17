//
//  LettersViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//  Development taken over by TigerSHe
//

import UIKit
import AVFoundation

class letterMainPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()
        // Do any additional setup after loading the view.
    }
    
    // reference to different storyboards
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let beginStoryBoard:UIStoryboard = UIStoryboard(name: "BeginningSounds", bundle:nil)
    
    //play intro sound
    var audioPlayer: AVAudioPlayer?
    
    func playIntroMessage() {
        let pathToSound = Bundle.main.path(forResource: "00alphabet_letters", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            //bruh
        }
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
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    // code for main level select buttons
    @IBAction func toNameBmras(_ sender: Any) {
        let vc = letterStoryBoard.instantiateViewController(identifier: "namebmras_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toNameBmrasCap(_ sender: Any) {
        let vc = letterStoryBoard.instantiateViewController(identifier: "namebmrascap_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toNameAbcde(_ sender: Any) {
        let vc = letterStoryBoard.instantiateViewController(identifier: "nameabcde_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toNameAbcdeCap(_ sender: Any) {
        let vc = letterStoryBoard.instantiateViewController(identifier: "nameabcdecap_vc")
        present(vc, animated: true)
    }
    
    
    
    //goes to beginning sound
    @IBAction func toSoundBmras(_ sender: Any) {
        let vc = beginStoryBoard.instantiateViewController(identifier: "twoButton_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toSoundAbcde(_ sender: Any) {
        let vc = beginStoryBoard.instantiateViewController(identifier: "oneButton_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toSoundBmrasCap(_ sender: Any) {
        let vc = beginStoryBoard.instantiateViewController(identifier: "fourButton_vc")
        present(vc, animated: true)
    }
    
    @IBAction func toSoundAbcdeCap(_ sender: Any) {
        let vc = beginStoryBoard.instantiateViewController(identifier: "threeButton_vc")
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
