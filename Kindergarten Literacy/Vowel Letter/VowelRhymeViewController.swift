//
//  VowelRhymeViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 4/7/21.
//

import Foundation
import UIKit
import AVFoundation
import SwiftUI


class VowelRhymeViewController: UIViewController {
    
    var passedInLetter: String!
    
    
    @IBOutlet var letter: UIButton!
    @IBOutlet var pic: UIButton!
    @IBOutlet var word: UIButton!;
    
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch passedInLetter{
            case "a", "A":
                pic.setImage(UIImage(named: "puzzle-A-ahh-composite"), for: .normal)
                word.setImage(UIImage(named: "a1words"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-A-ahh-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
            case "a ", "A ":
                pic.setImage(UIImage(named: "puzzle-A-short-composite"), for: .normal)
                word.setImage(UIImage(named: "a2"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-A-short-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            case "e", "E":
                pic.setImage(UIImage(named: "puzzle-E-short-composite"), for: .normal)
                word.setImage(UIImage(named: "e"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-E-short-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            case "i", "I":
                pic.setImage(UIImage(named: "puzzle-I-ee-composite"), for: .normal)
                word.setImage(UIImage(named: "i1"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-I-ee-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            case "i ", "I ":
                pic.setImage(UIImage(named: "puzzle-I-short-composite"), for: .normal)
                word.setImage(UIImage(named: "i1"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-I-short-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            case "o", "O":
                pic.setImage(UIImage(named: "puzzle-O-short-composite"), for: .normal)
                word.setImage(UIImage(named: "i1"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-O-short-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            case "u", "U":
                pic.setImage(UIImage(named: "puzzle-U-short-composite"), for: .normal)
                word.setImage(UIImage(named: "i1"), for: .normal)
                let pathToSound = Bundle.main.path(forResource: "puzzle-U-short-rhyme", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.play()
                } catch {}
                
            default:
                break
            }
    }
    
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
