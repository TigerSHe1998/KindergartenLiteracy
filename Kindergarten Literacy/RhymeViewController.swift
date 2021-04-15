//
//  VowelRhymeViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 4/7/21.
//

import UIKit
import AVFoundation

class RhymeViewController: UIViewController {
    
    var passedInLetter: String!
    var letterCategory: String!
    
    @IBOutlet var letter: UIButton!
    @IBOutlet var completePuzzle: UIImageView!
    @IBOutlet var rhymePic: UIImageView!
    

    
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageSetup()
    }
    
    
    func pageSetup() {
        switch passedInLetter{
            case "a", "A":
                configure(puzzleImage: "puzzle-A-ahh-composite", rhymeImage: "a1", rhymeAudio: "puzzle-A-ahh-rhyme")
            case "a ", "A ":
                configure(puzzleImage: "puzzle-A-short-composite", rhymeImage: "a2", rhymeAudio: "puzzle-A-short-rhyme")
            case "b", "B":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-B-buh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-B-buh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-B-buh-end-rhyme")
                }
            case "c", "C":
                configure(puzzleImage: "puzzle-C-kuh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-C-kuh-begin-rhyme")
            case "d", "D":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-D-duh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-D-duh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-D-duh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-D-duh-end-rhyme")
                }
            case "e", "E":
                configure(puzzleImage: "puzzle-E-short-composite", rhymeImage: "e", rhymeAudio: "puzzle-E-short-rhyme")
            case "f", "F":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-F-fuh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-F-fuh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-F-fuh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-F-fuh-end-rhyme")
                }
            case "g", "G":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-G-guh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-G-guh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-G-guh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-G-guh-end-rhyme")
                }
            case "h", "H":
                configure(puzzleImage: "puzzle-H-huh-begin-composite", rhymeImage: "e", rhymeAudio: "puzzle-H-huh-begin-rhyme")
            case "i", "I":
                configure(puzzleImage: "puzzle-I-ee-composite", rhymeImage: "i1", rhymeAudio: "puzzle-I-ee-rhyme")
            case "i ", "I ":
                configure(puzzleImage: "puzzle-I-short-composite", rhymeImage: "i2", rhymeAudio: "puzzle-I-short-rhyme")
            case "j", "J":
                configure(puzzleImage: "puzzle-J-juh-begin-composite", rhymeImage: "e", rhymeAudio: "puzzle-J-juh-begin-rhyme")
            case "k", "K":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-K-kuh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-K-kuh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-K-kuh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-K-kuh-end-rhyme")
                }
            case "l", "L":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-L-lll-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-L-lll-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-L-lll-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-L-lll-end-rhyme")
                }
            case "m", "M":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-M-mmm-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-M-mmm-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-M-mmm-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-M-mmm-end-rhyme")
                }
            case "n", "N":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-N-nnn-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-N-nnn-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-B-buh-end-rhyme")
                }
            case "o", "O":
                configure(puzzleImage: "puzzle-O-short-composite", rhymeImage: "o", rhymeAudio: "puzzle-O-short-rhyme")
            case "p", "P":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-P-puh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-P-puh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-P-puh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-P-puh-end-rhyme")
                }
            case "q", "Q":
                configure(puzzleImage: "puzzle-Q-qwuh-begin-composite", rhymeImage: "o", rhymeAudio: "puzzle-Q-qwuh-begin-rhyme")
            case "r", "R":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-R-ruh-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-R-ruh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-R-ruh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-R-ruh-end-rhyme")
                }
            case "s", "S":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-S-sss-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-S-sss-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-B-buh-end-rhyme")
                }
            case "t", "T":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-T-tttt-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-T-tttt-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-B-buh-end-rhyme")
                }
            case "u", "U":
                configure(puzzleImage: "puzzle-U-short-composite", rhymeImage: "u", rhymeAudio: "puzzle-U-short-rhyme")
            case "v", "V":
                configure(puzzleImage: "puzzle-V-vv-begin-composite", rhymeImage: "u", rhymeAudio: "puzzle-V-vv-begin-rhyme")
            case "w", "W":
                configure(puzzleImage: "puzzle-W-wuh-begin-composite", rhymeImage: "u", rhymeAudio: "puzzle-W-wuh-begin-rhyme")
            case "x", "X":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-X-ks-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-X-ks-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-X-ks-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-X-ks-end-rhyme")
                }
            case "y", "Y":
                configure(puzzleImage: "puzzle-Y-yuh-rhyme-composite", rhymeImage: "u", rhymeAudio: "puzzle-Y-yuh-rhyme")
            case "z", "Z":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-Z-zzz-begin-composite", rhymeImage: "a2", rhymeAudio: "puzzle-Z-zzz-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-Z-zzz-end-composite", rhymeImage: "a2", rhymeAudio: "puzzle-Z-zzz-end-rhyme")
                }
            default:
                break
            }
    }
    
    
    func configure(puzzleImage: String, rhymeImage: String, rhymeAudio: String) {
        completePuzzle.image = UIImage(named: puzzleImage)
        rhymePic.image = UIImage(named: rhymeImage)
        let pathToSound = Bundle.main.path(forResource: rhymeAudio, ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        
    }
    
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
