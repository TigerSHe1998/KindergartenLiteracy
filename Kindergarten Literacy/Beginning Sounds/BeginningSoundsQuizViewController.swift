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
    
    var puzzleArray: [UIImageView?] { return [puzzleFive, puzzleNine, puzzleSeven, puzzleTen, puzzleSix, puzzleTwelve, puzzleEight, puzzleEleven, puzzleTwo, puzzleThree, puzzleOne, puzzleFour] }
    
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
    
    var cPuzzles = ["puzzle-C-kuh-begin-row1-col1", "puzzle-C-kuh-begin-row2-col2", "puzzle-C-kuh-begin-row2-col0", "puzzle-C-kuh-begin-row3-col0", "puzzle-C-kuh-begin-row1-col2", "puzzle-C-kuh-begin-row3-col2", "puzzle-C-kuh-begin-row2-col1", "puzzle-C-kuh-begin-row3-col1", "puzzle-C-kuh-begin-row0-col1", "puzzle-C-kuh-begin-row0-col2", "puzzle-C-kuh-begin-row0-col0", "puzzle-C-kuh-begin-row1-col0"]
    var dPuzzles = ["puzzle-D-duh-begin-row1-col1", "puzzle-D-duh-begin-row2-col2", "puzzle-D-duh-begin-row2-col0", "puzzle-D-duh-begin-row3-col0", "puzzle-D-duh-begin-row1-col2", "puzzle-D-duh-begin-row3-col2", "puzzle-D-duh-begin-row2-col1", "puzzle-D-duh-begin-row3-col1", "puzzle-D-duh-begin-row0-col1", "puzzle-D-duh-begin-row0-col2", "puzzle-D-duh-begin-row0-col0", "puzzle-D-duh-begin-row1-col0"]
    var fPuzzles = ["puzzle-F-fuh-begin-row1-col1", "puzzle-F-fuh-begin-row2-col2", "puzzle-F-fuh-begin-row2-col0", "puzzle-F-fuh-begin-row3-col0", "puzzle-F-fuh-begin-row1-col2", "puzzle-F-fuh-begin-row3-col2", "puzzle-F-fuh-begin-row2-col1", "puzzle-F-fuh-begin-row3-col1", "puzzle-F-fuh-begin-row0-col1", "puzzle-F-fuh-begin-row0-col2", "puzzle-F-fuh-begin-row0-col0", "puzzle-F-fuh-begin-row1-col0"]
    var gPuzzles = ["puzzle-G-guh-begin-row1-col1", "puzzle-G-guh-begin-row2-col2", "puzzle-G-guh-begin-row2-col0", "puzzle-G-guh-begin-row3-col0", "puzzle-G-guh-begin-row1-col2", "puzzle-G-guh-begin-row3-col2", "puzzle-G-guh-begin-row2-col1", "puzzle-G-guh-begin-row3-col1", "puzzle-G-guh-begin-row0-col1", "puzzle-G-guh-begin-row0-col2", "puzzle-G-guh-begin-row0-col0", "puzzle-G-guh-begin-row1-col0"]
    var hPuzzles = ["puzzle-H-huh-begin-row1-col1", "puzzle-H-huh-begin-row2-col2", "puzzle-H-huh-begin-row2-col0", "puzzle-H-huh-begin-row3-col0", "puzzle-H-huh-begin-row1-col2", "puzzle-H-huh-begin-row3-col2", "puzzle-H-huh-begin-row2-col1", "puzzle-H-huh-begin-row3-col1", "puzzle-H-huh-begin-row0-col1", "puzzle-H-huh-begin-row0-col2", "puzzle-H-huh-begin-row0-col0", "puzzle-H-huh-begin-row1-col0"]
    var jPuzzles = ["puzzle-J-juh-begin-row1-col1", "puzzle-J-juh-begin-row2-col2", "puzzle-J-juh-begin-row2-col0", "puzzle-J-juh-begin-row3-col0", "puzzle-J-juh-begin-row1-col2", "puzzle-J-juh-begin-row3-col2", "puzzle-J-juh-begin-row2-col1", "puzzle-J-juh-begin-row3-col1", "puzzle-J-juh-begin-row0-col1", "puzzle-J-juh-begin-row0-col2", "puzzle-J-juh-begin-row0-col0", "puzzle-J-juh-begin-row1-col0"]
    var kPuzzles = ["puzzle-K-kuh-begin-row1-col1", "puzzle-K-kuh-begin-row2-col2", "puzzle-K-kuh-begin-row2-col0", "puzzle-K-kuh-begin-row3-col0", "puzzle-K-kuh-begin-row1-col2", "puzzle-K-kuh-begin-row3-col2", "puzzle-K-kuh-begin-row2-col1", "puzzle-K-kuh-begin-row3-col1", "puzzle-K-kuh-begin-row0-col1", "puzzle-K-kuh-begin-row0-col2", "puzzle-K-kuh-begin-row0-col0", "puzzle-K-kuh-begin-row1-col0"]
    var lPuzzles = ["puzzle-L-lll-begin-row1-col1", "puzzle-L-lll-begin-row2-col2", "puzzle-L-lll-begin-row2-col0", "puzzle-L-lll-begin-row3-col0", "puzzle-L-lll-begin-row1-col2", "puzzle-L-lll-begin-row3-col2", "puzzle-L-lll-begin-row2-col1", "puzzle-L-lll-begin-row3-col1", "puzzle-L-lll-begin-row0-col1", "puzzle-L-lll-begin-row0-col2", "puzzle-L-lll-begin-row0-col0", "puzzle-L-lll-begin-row1-col0"]
    var mPuzzles = ["puzzle-M-mmm-begin-row1-col1", "puzzle-M-mmm-begin-row2-col2", "puzzle-M-mmm-begin-row2-col0", "puzzle-M-mmm-begin-row3-col0", "puzzle-M-mmm-begin-row1-col2", "puzzle-M-mmm-begin-row3-col2", "puzzle-M-mmm-begin-row2-col1", "puzzle-M-mmm-begin-row3-col1", "puzzle-M-mmm-begin-row0-col1", "puzzle-M-mmm-begin-row0-col2", "puzzle-M-mmm-begin-row0-col0", "puzzle-M-mmm-begin-row1-col0"]
    var nPuzzles = ["puzzle-N-nnn-begin-row1-col1", "puzzle-N-nnn-begin-row2-col2", "puzzle-N-nnn-begin-row2-col0", "puzzle-N-nnn-begin-row3-col0", "puzzle-N-nnn-begin-row1-col2", "puzzle-N-nnn-begin-row3-col2", "puzzle-N-nnn-begin-row2-col1", "puzzle-N-nnn-begin-row3-col1", "puzzle-N-nnn-begin-row0-col1", "puzzle-N-nnn-begin-row0-col2", "puzzle-N-nnn-begin-row0-col0", "puzzle-N-nnn-begin-row1-col0"]
    var pPuzzles = ["puzzle-P-puh-begin-row1-col1", "puzzle-P-puh-begin-row2-col2", "puzzle-P-puh-begin-row2-col0", "puzzle-P-puh-begin-row3-col0", "puzzle-P-puh-begin-row1-col2", "puzzle-P-puh-begin-row3-col2", "puzzle-P-puh-begin-row2-col1", "puzzle-P-puh-begin-row3-col1", "puzzle-P-puh-begin-row0-col1", "puzzle-P-puh-begin-row0-col2", "puzzle-P-puh-begin-row0-col0", "puzzle-P-puh-begin-row1-col0"]
    var qPuzzles = ["puzzle-Q-qwuh-begin-row1-col1", "puzzle-Q-qwuh-begin-row2-col2", "puzzle-Q-qwuh-begin-row2-col0", "puzzle-Q-qwuh-begin-row3-col0", "puzzle-Q-qwuh-begin-row1-col2", "puzzle-Q-qwuh-begin-row3-col2", "puzzle-Q-qwuh-begin-row2-col1", "puzzle-Q-qwuh-begin-row3-col1", "puzzle-Q-qwuh-begin-row0-col1", "puzzle-Q-qwuh-begin-row0-col2", "puzzle-Q-qwuh-begin-row0-col0", "puzzle-Q-qwuh-begin-row1-col0"]
    var rPuzzles = ["puzzle-R-ruh-begin-row1-col1", "puzzle-R-ruh-begin-row2-col2", "puzzle-R-ruh-begin-row2-col0", "puzzle-R-ruh-begin-row3-col0", "puzzle-R-ruh-begin-row1-col2", "puzzle-R-ruh-begin-row3-col2", "puzzle-R-ruh-begin-row2-col1", "puzzle-R-ruh-begin-row3-col1", "puzzle-R-ruh-begin-row0-col1", "puzzle-R-ruh-begin-row0-col2", "puzzle-R-ruh-begin-row0-col0", "puzzle-R-ruh-begin-row1-col0"]
    var sPuzzles = ["puzzle-S-sss-begin-row1-col1", "puzzle-S-sss-begin-row2-col2", "puzzle-S-sss-begin-row2-col0", "puzzle-S-sss-begin-row3-col0", "puzzle-S-sss-begin-row1-col2", "puzzle-S-sss-begin-row3-col2", "puzzle-S-sss-begin-row2-col1", "puzzle-S-sss-begin-row3-col1", "puzzle-S-sss-begin-row0-col1", "puzzle-S-sss-begin-row0-col2", "puzzle-S-sss-begin-row0-col0", "puzzle-S-sss-begin-row1-col0"]
    var tPuzzles = ["puzzle-T-tttt-begin-row1-col1", "puzzle-T-tttt-begin-row2-col2", "puzzle-T-tttt-begin-row2-col0", "puzzle-T-tttt-begin-row3-col0", "puzzle-T-tttt-begin-row1-col2", "puzzle-T-tttt-begin-row3-col2", "puzzle-T-tttt-begin-row2-col1", "puzzle-T-tttt-begin-row3-col1", "puzzle-T-tttt-begin-row0-col1", "puzzle-T-tttt-begin-row0-col2", "puzzle-T-tttt-begin-row0-col0", "puzzle-T-tttt-begin-row1-col0"]
    var vPuzzles = ["puzzle-V-vv-begin-row1-col1", "puzzle-V-vv-begin-row2-col2", "puzzle-V-vv-begin-row2-col0", "puzzle-V-vv-begin-row3-col0", "puzzle-V-vv-begin-row1-col2", "puzzle-V-vv-begin-row3-col2", "puzzle-T-tttt-begin-row2-col1", "puzzle-V-vv-begin-row3-col1", "puzzle-V-vv-begin-row0-col1", "puzzle-V-vv-begin-row0-col2", "puzzle-V-vv-begin-row0-col0", "puzzle-V-vv-begin-row1-col0"]
    var wPuzzles = ["puzzle-W-wuh-begin-row1-col1", "puzzle-W-wuh-begin-row2-col2", "puzzle-W-wuh-begin-row2-col0", "puzzle-W-wuh-begin-row3-col0", "puzzle-W-wuh-begin-row1-col2", "puzzle-W-wuh-begin-row3-col2", "puzzle-W-wuh-begin-row2-col1", "puzzle-W-wuh-begin-row3-col1", "puzzle-W-wuh-begin-row0-col1", "puzzle-W-wuh-begin-row0-col2", "puzzle-W-wuh-begin-row0-col0", "puzzle-W-wuh-begin-row1-col0"]
    var xPuzzles = ["puzzle-X-ks-begin-row1-col1", "puzzle-X-ks-begin-row2-col2", "puzzle-X-ks-begin-row2-col0", "puzzle-X-ks-begin-row3-col0", "puzzle-X-ks-begin-row1-col2", "puzzle-X-ks-begin-row3-col2", "puzzle-X-ks-begin-row2-col1", "puzzle-X-ks-begin-row3-col1", "puzzle-X-ks-begin-row0-col1", "puzzle-X-ks-begin-row0-col2", "puzzle-X-ks-begin-row0-col0", "puzzle-X-ks-begin-row1-col0"]
    var yPuzzles = ["puzzle-Y-yuh-row1-col1", "puzzle-Y-yuh-row2-col2", "puzzle-Y-yuh-row2-col0", "puzzle-Y-yuh-row3-col0", "puzzle-Y-yuh-row1-col2", "puzzle-Y-yuh-row3-col2", "puzzle-Y-yuh-row2-col1", "puzzle-Y-yuh-row3-col1", "puzzle-Y-yuh-row0-col1", "puzzle-Y-yuh-row0-col2", "puzzle-Y-yuh-row0-col0", "puzzle-Y-yuh-row1-col0"]
    var zPuzzles = ["puzzle-Z-zzz-begin-row1-col1", "puzzle-Z-zzz-begin-row2-col2", "puzzle-Z-zzz-begin-row2-col0", "puzzle-Z-zzz-begin-row3-col0", "puzzle-Z-zzz-begin-row1-col2", "puzzle-Z-zzz-begin-row3-col2", "puzzle-Z-zzz-begin-row2-col1", "puzzle-Z-zzz-begin-row3-col1", "puzzle-Z-zzz-begin-row0-col1", "puzzle-Z-zzz-begin-row0-col2", "puzzle-Z-zzz-begin-row0-col0", "puzzle-Z-zzz-begin-row1-col0"]
    
    
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
            while (wrongTwo == "toe-b" || wrongTwo == "tail-b" || wrongTwo == "toys-b" || wrongTwo == wrongOne) {
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
            wordButton1.isEnabled = false
            wordButton2.isEnabled = false
            wordButton3.isEnabled = false
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 4 * seconds) {
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
                self.wordButton1.isEnabled = true
                self.wordButton2.isEnabled = true
                self.wordButton3.isEnabled = true
            }
            playLetter(s: desiredLabelOne)
        case 1:
            wordButton1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            wordButton2.setImage(UIImage(named: correctImage), for: .normal)
            wordButton3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            correctButton = wordButton2
            returnButton.isEnabled = false
            homeButton.isEnabled = false
            redoButton.isEnabled = false
            wordButton1.isEnabled = false
            wordButton2.isEnabled = false
            wordButton3.isEnabled = false
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 4 * seconds) {
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
                self.wordButton1.isEnabled = true
                self.wordButton2.isEnabled = true
                self.wordButton3.isEnabled = true
            }
            playLetter(s: desiredLabelOne)
        case 2:
            wordButton1.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            wordButton2.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            wordButton3.setImage(UIImage(named: correctImage), for: .normal)
            correctButton = wordButton3
            returnButton.isEnabled = false
            homeButton.isEnabled = false
            redoButton.isEnabled = false
            wordButton1.isEnabled = false
            wordButton2.isEnabled = false
            wordButton3.isEnabled = false
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 4 * seconds) {
                self.returnButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.redoButton.isEnabled = true
                self.wordButton1.isEnabled = true
                self.wordButton2.isEnabled = true
                self.wordButton3.isEnabled = true
            }
            playLetter(s: desiredLabelOne)
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
        case "C", "c":
            let curr:Int = saveFile!["c"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: cPuzzles[i])
                }
            }
        case "D", "d":
            let curr:Int = saveFile!["d"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: dPuzzles[i])
                }
            }
        case "F", "f":
            let curr:Int = saveFile!["f"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: fPuzzles[i])
                }
            }
        case "G", "g":
            let curr:Int = saveFile!["g"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: gPuzzles[i])
                }
            }
        case "H", "h":
            let curr:Int = saveFile!["h"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: hPuzzles[i])
                }
            }
        case "J", "j":
            let curr:Int = saveFile!["j"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: jPuzzles[i])
                }
            }
        case "K", "k":
            let curr:Int = saveFile!["k"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: kPuzzles[i])
                }
            }
        case "L", "l":
            let curr:Int = saveFile!["l"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: lPuzzles[i])
                }
            }
        case "M", "m":
            let curr:Int = saveFile!["m"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: mPuzzles[i])
                }
            }
        case "N", "n":
            let curr:Int = saveFile!["n"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: nPuzzles[i])
                }
            }
        case "P", "p":
            let curr:Int = saveFile!["p"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: pPuzzles[i])
                }
            }
        case "Q", "q":
            let curr:Int = saveFile!["q"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: qPuzzles[i])
                }
            }
        case "R", "r":
            let curr:Int = saveFile!["r"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: rPuzzles[i])
                }
            }
        case "S", "s":
            let curr:Int = saveFile!["s"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: sPuzzles[i])
                }
            }
        case "T", "t":
            let curr:Int = saveFile!["t"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: tPuzzles[i])
                }
            }
        case "V", "v":
            let curr:Int = saveFile!["v"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: vPuzzles[i])
                }
            }
        case "W", "w":
            let curr:Int = saveFile!["w"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: wPuzzles[i])
                }
            }
        case "X", "x":
            let curr:Int = saveFile!["x"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: xPuzzles[i])
                }
            }
        case "Y", "y":
            let curr:Int = saveFile!["y"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: yPuzzles[i])
                }
            }
        case "Z", "z":
            let curr:Int = saveFile!["z"] as! Int
            if curr > 0 {
                for i in 0...(curr - 1) {
                    puzzleArray[i]!.image = UIImage(named: zPuzzles[i])
                }
            }
        default: break
        }
    }
    
    
    @IBAction func choiceButtons(_ sender: Any) {
        if (sender as! UIButton) == correctButton {
            var saveFile = UserDefaults.standard.dictionary(forKey: "BP")
            var saveFile1 = UserDefaults.standard.dictionary(forKey: "BS")
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
                var currScore:Int = saveFile1!["B"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["B"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["b"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "C", "c":
                var curr:Int = saveFile!["c"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: cPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: cPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: cPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: cPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["C"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["C"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["c"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "D", "d":
                var curr:Int = saveFile!["d"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: dPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: dPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: dPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: dPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["D"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["D"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["d"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "F", "f":
                var curr:Int = saveFile!["f"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: fPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: fPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: fPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: fPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["F"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["F"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["f"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "G", "g":
                var curr:Int = saveFile!["g"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: gPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: gPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: gPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: gPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["G"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["G"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["g"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "H", "h":
                var curr:Int = saveFile!["h"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: hPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: hPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: hPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: hPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["H"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["H"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["h"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "J", "j":
                var curr:Int = saveFile!["j"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: jPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: jPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: jPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: jPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["J"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["J"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["j"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "K", "k":
                var curr:Int = saveFile!["k"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: kPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: kPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: kPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: kPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["K"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["K"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["k"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "L", "l":
                var curr:Int = saveFile!["l"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: lPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: lPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: lPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: lPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["L"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["L"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["l"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "M", "m":
                var curr:Int = saveFile!["m"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: mPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: mPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: mPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: mPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["M"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["M"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["m"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "N", "n":
                var curr:Int = saveFile!["n"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: nPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: nPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: nPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: nPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["N"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["N"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["n"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "P", "p":
                var curr:Int = saveFile!["p"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: pPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: pPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: pPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: pPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["P"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["P"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["p"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "Q", "q":
                var curr:Int = saveFile!["q"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: qPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: qPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: qPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: qPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["Q"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["Q"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["q"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "R", "r":
                var curr:Int = saveFile!["r"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: rPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: rPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: rPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: rPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["R"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["R"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["r"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "S", "s":
                var curr:Int = saveFile!["s"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: sPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: sPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: sPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: sPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["S"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["S"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["s"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "T", "t":
                var curr:Int = saveFile!["t"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: tPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: tPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: tPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: tPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["T"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["T"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["t"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "V", "v":
                var curr:Int = saveFile!["v"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: vPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: vPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: vPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: vPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["V"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["V"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["v"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "W", "w":
                var curr:Int = saveFile!["w"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: wPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: wPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: wPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: wPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["W"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["W"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["w"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "X", "x":
                var curr:Int = saveFile!["x"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: xPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: xPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: xPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: xPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["X"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["X"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["x"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "Y", "y":
                var curr:Int = saveFile!["y"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: yPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: yPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: yPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: yPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["Y"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["Y"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["y"] = curr
                UserDefaults.standard.set(saveFile, forKey: "BP")
            case "Z", "z":
                var curr:Int = saveFile!["z"] as! Int
                if correctChoice == 2 {
                    if curr < 12 {
                        if curr == 11 {
                            puzzleArray[curr]!.image = UIImage(named: zPuzzles[curr])
                            self.animate(myview: puzzleArray[curr]!)
                            curr += 1
                        } else {
                            puzzleArray[curr]!.image = UIImage(named: zPuzzles[curr])
                            puzzleArray[curr + 1]!.image = UIImage(named: zPuzzles[curr + 1])
                            self.animate(myview: puzzleArray[curr]!)
                            self.animate(myview: puzzleArray[curr + 1]!)
                            curr += 2
                        }
                    }
                } else if correctChoice == 1 {
                    if curr < 12 {
                        puzzleArray[curr]!.image = UIImage(named: zPuzzles[curr])
                        self.animate(myview: puzzleArray[curr]!)
                        curr += 1
                    }
                }
                var currScore:Int = saveFile1!["Z"] as! Int
                if currScore < 5 {
                    currScore += 1
                    saveFile1!["Z"] = currScore
                    UserDefaults.standard.set(saveFile1, forKey: "BS")
                }
                saveFile!["z"] = curr
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
                center.y = self.view.center.y
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
                        //(sender as! UIButton).isEnabled = true
                    })
                }
            })
            correctChoice = 2
        } else {
            if correctChoice > 0{
                correctChoice -= 1
            }
            switch desiredLabelOne {
            case "B", "b":
                decreaseStar(s: "B")
            case "C", "c":
                decreaseStar(s: "C")
            case "D", "d":
                decreaseStar(s: "D")
            case "F", "f":
                decreaseStar(s: "F")
            case "G", "g":
                decreaseStar(s: "G")
            case "H", "h":
                decreaseStar(s: "H")
            case "J", "j":
                decreaseStar(s: "J")
            case "K", "k":
                decreaseStar(s: "K")
            case "L", "l":
                decreaseStar(s: "L")
            case "M", "m":
                decreaseStar(s: "M")
            case "N", "n":
                decreaseStar(s: "N")
            case "P", "p":
                decreaseStar(s: "p")
            case "Q", "q":
                decreaseStar(s: "Q")
            case "R", "r":
                decreaseStar(s: "R")
            case "S", "s":
                decreaseStar(s: "S")
            case "T", "t":
                decreaseStar(s: "T")
            case "V", "v":
                decreaseStar(s: "V")
            case "W", "w":
                decreaseStar(s: "W")
            case "X", "x":
                decreaseStar(s: "X")
            case "Y", "y":
                decreaseStar(s: "Y")
            case "Z", "z":
                decreaseStar(s: "Z")
            default: break
            }
        }
    }
    
    func decreaseStar(s: String) {
        var saveFile1 = UserDefaults.standard.dictionary(forKey: "BS")
        var currScore:Int = saveFile1![s] as! Int
        if currScore > 0 && currScore != 5 {
            currScore -= 1
            saveFile1![s] = currScore
            UserDefaults.standard.set(saveFile1, forKey: "BS")
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
        playLetter(s: desiredLabelOne)
    }
    
    func playLetter(s: String) {
        switch s {
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "B-buh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "C-kuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "D-duh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "F-fuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "G-guh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "H-huh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "J-juh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "K-kuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "L-lll-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "M-mmm-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "N-nnn-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "P-puh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "Q-qwuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "R-ruh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "S-sss-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "T-tttt-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "V-vv-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "W-wuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "X-ks-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "Y-yuh-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "Z-zzz-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
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
