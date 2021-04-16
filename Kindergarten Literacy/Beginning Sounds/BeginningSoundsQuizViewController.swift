//
//  BeginningSoundsQuizViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/4.
//

import Foundation
import UIKit
import AVFoundation


class BeginningSoundsQuizViewController: UIViewController {
    
    var correctChoice = 2
    
    var array = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var images = ["boat-b", "boy-b", "bubble-b", "cake-b", "canary-b", "cat-b", "dog-b", "door-b", "drum-b", "fish-b", "foot-b", "fox-b", "goat-b", "gold-b", "goose-b", "hardhat-b", "hide-b", "hug-b", "jeep-b", "joy-b", "jump-b", "kangaroo-b", "kayak-b", "key-b", "leaf-b", "lion-b", "love-b", "mermaid-b", "mole-b", "monkey-b", "nail-b", "nest-b", "noise-b", "penguin-b", "pie-b", "puppy-b", "queen-b", "question-b", "quick-b", "raccoons-b", "robot-b", "run-b", "say-b", "sneak-b", "suitcase-b", "tail-b", "toe-b", "toys-b", "van-b", "voice-b", "volcano-b", "wagon-b", "wind-b", "wolf-b", "ax-b", "exam-b", "excavator-b", "yawn-b", "yellow-b", "yoyo-b", "zebra-b", "zipper-b", "zoo-b"]
    
    
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
    
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var redoButton: UIButton!
    
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
        var wrongOne = images.randomElement()
        var wrongTwo = images.randomElement()
        switch desiredLabelOne {
        case "B", "b":
            let correct = Int.random(in: 0..<3)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "boy-b" || wrongOne == "bubble-b" ||  wrongOne == "boat-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "boy-b" || wrongTwo == "bubble-b" || wrongTwo == "boat-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "C", "c":
            let correct = Int.random(in: 3..<6)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "canary-b" || wrongOne == "cake-b" ||  wrongOne == "cat-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "canary-b" || wrongTwo == "cake-b" || wrongTwo == "cat-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "D", "d":
            let correct = Int.random(in: 6..<9)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "dog-b" || wrongOne == "drum-b" ||  wrongOne == "door-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "dog-b" || wrongTwo == "drum-b" || wrongTwo == "door-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "F", "f":
            let correct = Int.random(in: 9..<12)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "fish-b" || wrongOne == "fox-b" ||  wrongOne == "foot-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "fish-b" || wrongTwo == "fox-b" || wrongTwo == "foot-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "G", "g":
            let correct = Int.random(in: 12..<15)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "goat-b" || wrongOne == "gold-b" ||  wrongOne == "goose-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "goat-b" || wrongTwo == "gold-b" || wrongTwo == "goose-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "H", "h":
            let correct = Int.random(in: 15..<18)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "hide-b" || wrongOne == "hardhat-b" ||  wrongOne == "hug-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "hide-b" || wrongTwo == "hardhat-b" || wrongTwo == "hug-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "J", "j":
            let correct = Int.random(in: 18..<21)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "jump-b" || wrongOne == "joy-b" ||  wrongOne == "jeep-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "jump-b" || wrongTwo == "joy-b" || wrongTwo == "jeep-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "K", "k":
            let correct = Int.random(in: 21..<24)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "key-b" || wrongOne == "kayak-b" ||  wrongOne == "kangaroo-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "key-b" || wrongTwo == "kayak-b" || wrongTwo == "kangaroo-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "L", "l":
            let correct = Int.random(in: 24..<27)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "love-b" || wrongOne == "leaf-b" ||  wrongOne == "lion-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "love-b" || wrongTwo == "leaf-b" || wrongTwo == "lion-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "M", "m":
            let correct = Int.random(in: 27..<30)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "monkey-b" || wrongOne == "mole-b" ||  wrongOne == "mermaid-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "monkey-b" || wrongTwo == "mole-b" || wrongTwo == "mermaid-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "N", "n":
            let correct = Int.random(in: 30..<33)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "nail-b" || wrongOne == "nest-b" ||  wrongOne == "noise-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "nail-b" || wrongTwo == "nest-b" || wrongTwo == "noise-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "P", "p":
            let correct = Int.random(in: 33..<36)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "puppy-b" || wrongOne == "penguin-b" ||  wrongOne == "pie-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "puppy-b" || wrongTwo == "penguin-b" || wrongTwo == "pie-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "Q", "q":
            let correct = Int.random(in: 36..<39)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "queen-b" || wrongOne == "question-b" ||  wrongOne == "quick-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "queen-b" || wrongTwo == "question-b" || wrongTwo == "quick-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "R", "r":
            let correct = Int.random(in: 39..<42)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "raccoons-b" || wrongOne == "robot-b" ||  wrongOne == "run-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "raccoons-b" || wrongTwo == "robot-b" || wrongTwo == "run-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "S", "s":
            let correct = Int.random(in: 42..<45)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "suitcase-b" || wrongOne == "say-b" ||  wrongOne == "sneak-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "suitcase-b" || wrongTwo == "say-b" || wrongTwo == "sneak-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "T", "t":
            let correct = Int.random(in: 45..<48)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "toe-b" || wrongOne == "toys-b" ||  wrongOne == "tail-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "toe-b" || wrongTwo == "tails-b" || wrongTwo == "toys-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "V", "v":
            let correct = Int.random(in: 48..<51)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "volcano-b" || wrongOne == "van-b" ||  wrongOne == "voice-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "volcano-b" || wrongTwo == "van-b" || wrongTwo == "voice-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "W", "w":
            let correct = Int.random(in: 51..<54)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "wagon-b" || wrongOne == "wolf-b" ||  wrongOne == "wind-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "wagon-b" || wrongTwo == "wolf-b" || wrongTwo == "wind-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "X", "x":
            let correct = Int.random(in: 54..<57)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "ax-b" || wrongOne == "excavator-b" ||  wrongOne == "exam-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "ax-b" || wrongTwo == "excavator-b" || wrongTwo == "exam-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "Y", "y":
            let correct = Int.random(in: 57..<60)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "yellow-b" || wrongOne == "yoyo-b" ||  wrongOne == "yawn-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "yellow-b" || wrongTwo == "yoyo-b" || wrongTwo == "yawn-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        case "Z", "z":
            let correct = Int.random(in: 60..<63)
            correctImage = images[correct]
            wrongOne = images.randomElement()
            wrongTwo = images.randomElement()
            while (wrongOne == "zebra-b" || wrongOne == "zipper-b" ||  wrongOne == "zoo-b") {
                wrongOne = images.randomElement()
            }
            while (wrongTwo == "zebra-b" || wrongTwo == "zipper-b" || wrongTwo == "zoo-b" || wrongTwo == wrongOne) {
                wrongTwo = images.randomElement()
            }
        default:
            break
        }
            
        let correctChoice = Int.random(in: 0..<3)
        switch correctChoice {
        case 0:
            wordButton1.setImage(UIImage(named: correctImage), for: .normal)
            wordButton2.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            wordButton3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            correctButton = wordButton1
            returnButton.isEnabled = false
            homeButton.isEnabled = false
            redoButton.isEnabled = false
                
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
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
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
            returnButton.isEnabled = false
            homeButton.isEnabled = false
            redoButton.isEnabled = false
                
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
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
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
            returnButton.isEnabled = false
            homeButton.isEnabled = false
            redoButton.isEnabled = false
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
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
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
    }
    
    func setupPuzzles() {
        let saveFile = UserDefaults.standard.dictionary(forKey: "BP")
        switch desiredLabelOne {
        case "B", "b":
            let curr:Int = saveFile!["b"] as! Int
            if curr > 0 {
                puzzleFive.image = UIImage(named: "puzzle-B-buh-begin-row1-col1")
            }
            if curr > 1 {
                puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
            }
            if curr > 2 {
                puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
            }
            if curr > 3 {
                puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
            }
            if curr > 4 {
                puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
            }
            if curr > 5 {
                puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
            }
            if curr > 6 {
                puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
            }
            if curr > 7 {
                puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
            }
            if curr > 8 {
                puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
            }
            if curr > 9 {
                puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
            }
            if curr > 10 {
                puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
            }
            if curr > 11 {
                puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
            }
        default: break
        }
    }
    
    
    @IBAction func choiceButtons(_ sender: Any) {
        if (sender as! UIButton) == correctButton {
            var saveFile = UserDefaults.standard.dictionary(forKey: "BP")
            switch desiredLabelOne {
            case "b", "B":
                var curr:Int = saveFile!["b"] as! Int
                if correctChoice == 2 {
                    if curr == 0 {
                        puzzleFive.image = UIImage(named: "puzzle-B-buh-begin-row1-col1")
                        puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
                        self.animate(myview: puzzleFive)
                        self.animate(myview: puzzleNine)
                    }
                    if curr == 1 {
                        puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
                        puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
                        self.animate(myview: puzzleNine)
                        self.animate(myview: puzzleSeven)
                    }
                    if curr == 2 {
                        puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
                        puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
                        self.animate(myview: puzzleSeven)
                        self.animate(myview: puzzleTen)
                    }
                    if curr == 3 {
                        puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
                        puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
                        self.animate(myview: puzzleTen)
                        self.animate(myview: puzzleSix)
                    }
                    if curr == 4 {
                        puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
                        puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
                        self.animate(myview: puzzleSix)
                        self.animate(myview: puzzleTwelve)
                    }
                    if curr == 5 {
                        puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
                        puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
                        self.animate(myview: puzzleTwelve)
                        self.animate(myview: puzzleEight)
                    }
                    if curr == 6 {
                        puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
                        puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
                        self.animate(myview: puzzleEight)
                        self.animate(myview: puzzleEleven)
                    }
                    if curr == 7 {
                        puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
                        puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
                        self.animate(myview: puzzleEleven)
                        self.animate(myview: puzzleTwo)
                    }
                    if curr == 8 {
                        puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
                        puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
                        self.animate(myview: puzzleTwo)
                        self.animate(myview: puzzleThree)
                    }
                    if curr == 9 {
                        puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
                        puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
                        self.animate(myview: puzzleThree)
                        self.animate(myview: puzzleOne)
                    }
                    if curr == 10 {
                        puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
                        puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
                        self.animate(myview: puzzleOne)
                        self.animate(myview: puzzleFour)
                    }
                    if curr == 11 {
                        puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
                        self.animate(myview: puzzleFour)
                    }
                    if curr < 11 {
                        curr += 2
                    } else if curr == 11 {
                        curr += 1
                    }
                }
                if correctChoice == 1 {
                    if curr == 0 {
                        puzzleFive.image = UIImage(named: "puzzle-B-buh-begin-row1-col1")
                        self.animate(myview: puzzleFive)
                    }
                    if curr == 1 {
                        puzzleNine.image = UIImage(named: "puzzle-B-buh-begin-row2-col2")
                        self.animate(myview: puzzleNine)
                    }
                    if curr == 2 {
                        puzzleSeven.image = UIImage(named: "puzzle-B-buh-begin-row2-col0")
                        self.animate(myview: puzzleSeven)
                    }
                    if curr == 3 {
                        puzzleTen.image = UIImage(named: "puzzle-B-buh-begin-row3-col0")
                        self.animate(myview: puzzleTen)
                    }
                    if curr == 4 {
                        puzzleSix.image = UIImage(named: "puzzle-B-buh-begin-row1-col2")
                        self.animate(myview: puzzleSix)
                    }
                    if curr == 5 {
                        puzzleTwelve.image = UIImage(named: "puzzle-B-buh-begin-row3-col2")
                        self.animate(myview: puzzleTwelve)
                    }
                    if curr == 6 {
                        puzzleEight.image = UIImage(named: "puzzle-B-buh-begin-row2-col1")
                        self.animate(myview: puzzleEight)
                    }
                    if curr == 7 {
                        puzzleEleven.image = UIImage(named: "puzzle-B-buh-begin-row3-col1")
                        self.animate(myview: puzzleEleven)
                    }
                    if curr == 8 {
                        puzzleTwo.image = UIImage(named: "puzzle-B-buh-begin-row0-col1")
                        self.animate(myview: puzzleTwo)
                    }
                    if curr == 9 {
                        puzzleThree.image = UIImage(named: "puzzle-B-buh-begin-row0-col2")
                        self.animate(myview: puzzleThree)
                    }
                    if curr == 10 {
                        puzzleOne.image = UIImage(named: "puzzle-B-buh-begin-row0-col0")
                        self.animate(myview: puzzleOne)
                    }
                    if curr == 11 {
                        puzzleFour.image = UIImage(named: "puzzle-B-buh-begin-row1-col0")
                        self.animate(myview: puzzleFour)
                    }
                    if curr < 12 {
                        curr += 1
                    }
                }
                saveFile!["b"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            default: break
            }
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
            correctChoice = 2
        } else {
            if correctChoice > 0{
                correctChoice -= 1
            }
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
