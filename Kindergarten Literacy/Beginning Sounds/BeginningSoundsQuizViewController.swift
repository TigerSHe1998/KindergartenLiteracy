//
//  BeginningSoundsQuizViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/4.
//

import Foundation
import UIKit
import AVFoundation

var puzzleProgress = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

class BeginningSoundsQuizViewController: UIViewController {
    
    var array = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var images = ["boat-b", "boy-b", "bubble-b", "cake-b", "canary-b", "cat-b", "dog-b", "door-b", "drum-b", "ax-b", "exam-b", "excavator-b", "fish-b", "foot-b", "fox-b", "goat-b", "gold-b", "goose-b", "hardhat-b", "hide-b", "hug-b", "jeep-b", "joy-b", "jump-b", "kangaroo-b", "kayak-b", "key-b", "leaf-b", "lion-b", "love-b", "mermaid-b", "mole-b", "monkey-b", "nail-b", "nest-b", "noise-b", "penguin-b", "pie-b", "puppy-b", "queen-b", "question-b", "quick-b", "raccoons-b", "robot-b", "run-b", "say-b", "sneak-b", "suitcase-b", "tail-b", "toe-b", "toys-b", "van-b", "voice-b", "volcano-b", "wagon-b", "wind-b", "wolf-b", "yawn-b", "yellow-b", "yoyo-b", "zebra-b", "zipper-b", "zoo-b"]
    
    
    var puzzleOne: UIImageView!
    var puzzleTwo: UIImageView!
    var puzzleThree: UIImageView!
    var puzzleFour: UIImageView!
    var puzzleFive: UIImageView!
    var puzzleSix: UIImageView!
    var puzzleSeven: UIImageView!
    var puzzleEight: UIImageView!
    var puzzleNine: UIImageView!
    var puzzleTen: UIImageView!
    var puzzleEleven: UIImageView!
    var puzzleTwelve: UIImageView!
    
    var correctImage: String!
    
    var desiredLabelOne: String!
    
    var correctButton: UIButton!
    
    
    var audioPlayer: AVAudioPlayer?
    var keepPlaying = 1
    
    
    @IBOutlet weak var myButtonOne: UIButton!;
    
    @IBOutlet weak var wordButton1: UIButton!
    @IBOutlet weak var wordButton2: UIButton!;
    @IBOutlet weak var wordButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        puzzleOne = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.addSubview(puzzleOne)
        puzzleTwo = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTwo, belowSubview: puzzleOne)
        puzzleThree = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleThree, belowSubview: puzzleTwo)
        puzzleFour = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleFour, belowSubview: puzzleThree)
        puzzleFive = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleFive, belowSubview: puzzleFour)
        puzzleSix = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleSix, belowSubview: puzzleFive)
        puzzleSeven = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleSeven, belowSubview: puzzleSix)
        puzzleEight = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleEight, belowSubview: puzzleSeven)
        puzzleNine = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleNine, belowSubview: puzzleEight)
        puzzleTen = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTen, belowSubview: puzzleNine)
        puzzleEleven = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleEleven, belowSubview: puzzleTen)
        puzzleTwelve = UIImageView(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTwelve, belowSubview: puzzleEleven)
        
        myButtonOne.setTitle(desiredLabelOne, for: .normal)
        
        setupChoices()
        setupPuzzles()
        // Do any additional setup after loading the view.
    }
    
    func setupChoices() {
        keepPlaying = 1
        switch desiredLabelOne {
        case "B", "b":
            let correct = Int.random(in: 0..<3)
            correctImage = images[correct]
            var wrongOne = images.randomElement()
            var wrongTwo = images.randomElement()
            while (wrongOne == "boy-b" || wrongOne == "bubble-b" ||  wrongOne == "boat-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "boy-b" || wrongTwo == "bubble-b" || wrongTwo == "boat-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
            
            let correctChoice = Int.random(in: 0..<3)
            switch correctChoice {
            case 0:
                wordButton1.setImage(UIImage(named: correctImage), for: .normal)
                wordButton2.setImage(UIImage(named: String(wrongOne!)), for: .normal)
                wordButton3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
                correctButton = wordButton1
                let seconds = 1.5
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    let pathToSound = Bundle.main.path(forResource: self.correctImage, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongOne, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongTwo, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                let pathToSound = Bundle.main.path(forResource: "B-buh-b", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                    self.audioPlayer?.play()
                } catch {}
            case 1:
                wordButton1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
                wordButton2.setImage(UIImage(named: correctImage), for: .normal)
                wordButton3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
                correctButton = wordButton2
                let seconds = 1.5
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongOne, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: self.correctImage,ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongTwo, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                let pathToSound = Bundle.main.path(forResource: "B-buh-b", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                    self.audioPlayer?.play()
                } catch {}
            case 2:
                wordButton1.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
                wordButton2.setImage(UIImage(named: String(wrongOne!)), for: .normal)
                wordButton3.setImage(UIImage(named: correctImage), for: .normal)
                correctButton = wordButton3
                let seconds = 1.5
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongTwo, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: wrongOne, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3 * seconds) {
                    let pathToSound = Bundle.main.path(forResource: self.correctImage, ofType: "mp3")!
                    let url = URL(fileURLWithPath: pathToSound)
                    do {
                        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                        self.audioPlayer?.play()
                    } catch {}
                }
                let pathToSound = Bundle.main.path(forResource: "B-buh-b", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathToSound)
                do {
                    self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                    self.audioPlayer?.play()
                } catch {}
            default:
                break
            }
        default:
            break
        }
    }
    
    func setupPuzzles() {
        switch desiredLabelOne {
        case "B", "b":
            if puzzleProgress[0] > 1 {
                puzzleFive.image = UIImage(named: "puzzle-B-buh-begin-row1-col1")
                puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
            }
            if puzzleProgress[0] > 2 {
                puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
                puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
            }
            if puzzleProgress[0] > 3 {
                puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
                puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
            }
            if puzzleProgress[0] > 4 {
                puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
                puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
            }
            if puzzleProgress[0] > 5 {
                puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
                puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
            }
            if puzzleProgress[0] > 6 {
                puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
                puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
            }
        default: break
        }
    }
    
    
    @IBAction func choiceButtons(_ sender: Any) {
        if (sender as! UIButton) == correctButton {
            if puzzleProgress[0] == 1 {
                puzzleFive.image = UIImage(named: "puzzle-B-buh-begin-row1-col1")
                puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
                self.animate(myview: puzzleFive)
                self.animate(myview: puzzleNine)
            }
            if puzzleProgress[0] == 2 {
                puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
                puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
                self.animate(myview: puzzleSeven)
                self.animate(myview: puzzleTen)
            }
            if puzzleProgress[0] == 3 {
                puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
                puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
                self.animate(myview: puzzleSix)
                self.animate(myview: puzzleTwelve)
            }
            if puzzleProgress[0] == 4 {
                puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
                puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
                self.animate(myview: puzzleEight)
                self.animate(myview: puzzleEleven)
            }
            if puzzleProgress[0] == 5 {
                puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
                puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
                self.animate(myview: puzzleTwo)
                self.animate(myview: puzzleThree)
            }
            if puzzleProgress[0] == 6 {
                puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
                puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
                self.animate(myview: puzzleOne)
                self.animate(myview: puzzleFour)
            }
            puzzleProgress[0] += 1
            // sound fx
            audioPlayer!.stop()
            let pathToSound = Bundle.main.path(forResource: correctImage, ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            // disable button to avoid tapping during animation
            (sender as! UIButton).isEnabled = false
            
            // ANIMATION BLOCK //
            // backup center points
            let c1 = self.wordButton1.center
            let c2 = self.wordButton2.center
            let c3 = self.wordButton3.center
            // play animation
            UIView.animate(withDuration: 1, animations: {
                // center correct choice
                var center = self.wordButton1.center
                center.y += 90
                (sender as! UIButton).center = center
                // fade others if not correct choice
                if self.wordButton1 != (sender as! UIButton) {
                    self.wordButton1.alpha = 0.0
                }
                if self.wordButton2 != (sender as! UIButton) {
                    self.wordButton2.alpha = 0.0
                }
                if self.wordButton3 != (sender as! UIButton) {
                    self.wordButton3.alpha = 0.0
                }
            }, completion: { done in // excutes only after animation complete
                if done {
                    // sleep 1 second to keep answer on screen longer
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute : {
                        // hide letter to avoid pop in
                        (sender as! UIButton).alpha = 0.0
                        // assign new choices and layout
                        self.setupChoices()
                        // reset positions
                        self.wordButton1.center = c1
                        self.wordButton2.center = c2
                        self.wordButton3.center = c3
                        UIView.animate(withDuration: 0.5, animations: {
                            // show hidden letter with grace (if no use animation will pop)
                            self.wordButton1.alpha = 1.0
                            self.wordButton2.alpha = 1.0
                            self.wordButton3.alpha = 1.0
                        })
                        // re enable button
                        (sender as! UIButton).isEnabled = true
                    })
                }
            })
        }
    }
    
    func animate(myview: UIImageView) {
        UIImageView.animate(withDuration: 1, animations: {
            myview.frame = CGRect(x: 150, y: 110, width: 230, height: 270)
            myview.center = myview.center
        }, completion: {done in
            if done {
                UIImageView.animate(withDuration: 1, animations: {
                    myview.frame = CGRect(x: 150, y: 110, width: 220, height: 260)
                    myview.center = myview.center
                }, completion:  {done in
                    if done {
                    }
                })
            }
        })
    }

    @IBAction func play(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "B-buh-b", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    @IBAction func returnButtonTapped(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }
    
    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func replay(_ sender: Any) {
        audioPlayer!.stop()
        setupChoices()
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
}
