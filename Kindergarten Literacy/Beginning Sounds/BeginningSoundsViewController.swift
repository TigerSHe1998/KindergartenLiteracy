//
//  BeginningSoundsViewController.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 11/23/20.
//


import Foundation
import UIKit
import AVFoundation

class BeginningSoundsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        playIntroMessage()

        // Do any additional setup after loading the view.
    }
    
    var audioPlayer: AVAudioPlayer?
    
    func playIntroMessage() {
        let pathToSound = Bundle.main.path(forResource: "beginning-sounds", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    
    @IBAction func beginningSoundsOne(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "oneButton_vc") as! BeginningSoundsOneButtonViewController
        present(vc, animated: true)
    }
    
    @IBAction func beginningSoundsTwo(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "twoButton_vc") as! BeginningSoundsTwoButtonViewController
        present(vc, animated: true)
    }
    
    @IBAction func beginningSoundsThree(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "threeButton_vc") as! BeginningSoundsThreeButtonViewController
        present(vc, animated: true)
    }
    
    
    @IBAction func beginningSoundsFourButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "fourButton_vc") as! BeginningSoundsFourButtonViewController
        present(vc, animated: true)
    }
    

    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
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

    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "beginning_sounds_quiz_vc") as! BeginningSoundsQuizViewController
        vc.desiredLabelOne = "b"
        audioPlayer!.stop()
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
