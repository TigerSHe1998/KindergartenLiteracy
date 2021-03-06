//
//  EndingSoundsQuiz.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 3/3/21.
//

import UIKit
import AVFoundation
import SwiftUI



class EndingSoundsQuiz: UIViewController {
    
    var images = ["cub-e", "crab-e", "cobweb-e", "bird-e", "cold-e", "friend-e", "scarf-e", "thief-e", "chef-e", "frog-e", "plug-e", "bug-e",
                    "elk-e", "pick-e", "shark-e", "owl-e", "goal-e", "sail-e", "swim-e", "clam-e", "storm-e", "rain-e", "van-e", "fin-e",
                    "drop-e", "soap-e", "jeep-e", "door-e", "tiger-e", "polar-bear-e", "bus-e", "dress-e", "grapes-e", "net-e", "paint-e",
                    "tent-e", "fox-e", "ax-e", "six-e", "quiz-e", "prize-e", "freeze-e"]
    
    var puzzleOne: UIButton!
    var puzzleTwo: UIButton!
    var puzzleThree: UIButton!
    var puzzleFour: UIButton!
    var puzzleFive: UIButton!
    var puzzleSix: UIButton!
    var puzzleSeven: UIButton!
    var puzzleEight: UIButton!
    var puzzleNine: UIButton!
    var puzzleTen: UIButton!
    var puzzleEleven: UIButton!
    var puzzleTwelve: UIButton!
    
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArray: [String]!
    
    // choice buttons variables outlet
    @IBOutlet var letterButton: UIButton!
    @IBOutlet var choice1: UIButton!;
    @IBOutlet var choice2: UIButton!;
    @IBOutlet var choice3: UIButton!;
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var homeButton: UIButton!
    @IBOutlet var replayButton: UIButton!
    @IBOutlet var coinButton: UIButton!
    @IBOutlet var puzzleButton: UIButton!
    
    // audio player
    var audioPlayer: AVAudioPlayer?
    
    // other globals
    var currentArray: Array<String>!
    var currentLetter: String!
    
    var correctImage: String!
    var wrongOne: String!
    var wrongTwo: String!
    
    var correctButton: UIButton!
    var puzzleIncrement = 2
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letterButton.setTitle(passedInLetter, for: .normal)
        
        puzzleOne = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.addSubview(puzzleOne)
        puzzleTwo = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleTwo, belowSubview: puzzleOne)
        puzzleThree = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleThree, belowSubview: puzzleTwo)
        puzzleFour = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleFour, belowSubview: puzzleThree)
        puzzleFive = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleFive, belowSubview: puzzleFour)
        puzzleSix = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleSix, belowSubview: puzzleFive)
        puzzleSeven = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleSeven, belowSubview: puzzleSix)
        puzzleEight = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleEight, belowSubview: puzzleSeven)
        puzzleNine = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleNine, belowSubview: puzzleEight)
        puzzleTen = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleTen, belowSubview: puzzleNine)
        puzzleEleven = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleEleven, belowSubview: puzzleTen)
        puzzleTwelve = UIButton(frame: CGRect(x: 150, y: view.center.y - view.frame.size.height * 0.19, width: 220, height: 260))
        self.view.insertSubview(puzzleTwelve, belowSubview: puzzleEleven)
        
        
        currentArray = passedInArray
        currentLetter = passedInLetter
        // set up choices
        setupChoices()
        // set up puzzles
        setupPuzzles()
    }
    
    // fixing puzzle location
    override func viewDidLayoutSubviews() {
        var Loc = letterButton.frame.origin
        Loc.x -= 90
        Loc.y += 115
        
        puzzleOne.frame.origin = Loc
        puzzleTwo.frame.origin = Loc
        puzzleThree.frame.origin = Loc
        puzzleFour.frame.origin = Loc
        puzzleFive.frame.origin = Loc
        puzzleSix.frame.origin = Loc
        puzzleSeven.frame.origin = Loc
        puzzleEight.frame.origin = Loc
        puzzleNine.frame.origin = Loc
        puzzleTen.frame.origin = Loc
        puzzleEleven.frame.origin = Loc
        puzzleTwelve.frame.origin = Loc
    }
    
    func setupChoices() {
        switch currentLetter {
        case "b", "B":
            getRandomChoices(firstPic: 0, secondPic: 1, thirdPic: 2)
        case "d","D":
            getRandomChoices(firstPic: 3, secondPic: 4, thirdPic: 5)
        case "f","F":
            getRandomChoices(firstPic: 6, secondPic: 7, thirdPic: 8)
        case "g","G":
            getRandomChoices(firstPic: 9, secondPic: 10, thirdPic: 11)
        case "k","K":
            getRandomChoices(firstPic: 12, secondPic: 13, thirdPic: 14)
        case "l","L":
            getRandomChoices(firstPic: 15, secondPic: 16, thirdPic: 17)
        case "m","M":
            getRandomChoices(firstPic: 18, secondPic: 19, thirdPic: 20)
        case "n","N":
            getRandomChoices(firstPic: 21, secondPic: 22, thirdPic: 23)
        case "p","P":
            getRandomChoices(firstPic: 24, secondPic: 25, thirdPic: 26)
        case "r","R":
            getRandomChoices(firstPic: 27, secondPic: 28, thirdPic: 29)
        case "s","S":
            getRandomChoices(firstPic: 30, secondPic: 31, thirdPic: 32)
        case "t","T":
            getRandomChoices(firstPic: 33, secondPic: 34, thirdPic: 35)
        case "x","X":
            getRandomChoices(firstPic: 36, secondPic: 37, thirdPic: 38)
        case "z","Z":
            getRandomChoices(firstPic: 39, secondPic: 40, thirdPic: 41)
        default:
            break
        }
        
        let correctOne = Int.random(in: 0..<3)
        switch correctOne {
        case 0:
            choice1.setImage(UIImage(named: correctImage), for: .normal)
            choice1.setTitle(correctImage, for: .normal)
            choice2.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            choice2.setTitle(wrongOne, for: .normal)
            choice3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            choice3.setTitle(wrongTwo, for: .normal)
            correctButton = choice1
        case 1:
            choice1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            choice1.setTitle(wrongOne, for: .normal)
            choice2.setImage(UIImage(named: correctImage), for: .normal)
            choice2.setTitle(correctImage, for: .normal)
            choice3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            choice3.setTitle(wrongTwo, for: .normal)
            correctButton = choice2
        case 2:
            choice1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            choice1.setTitle(wrongOne, for: .normal)
            choice2.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            choice2.setTitle(wrongTwo, for: .normal)
            choice3.setImage(UIImage(named: correctImage), for: .normal)
            choice3.setTitle(correctImage, for: .normal)
            correctButton = choice3
        default:
            break
        }
        choice1.isEnabled = false
        choice2.isEnabled = false
        choice3.isEnabled = false
        backButton.isEnabled = false
        homeButton.isEnabled = false
        replayButton.isEnabled = false

        
        playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice3.currentTitle!, thirdChoice: choice2.currentTitle!)


        let seconds = 6.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {

            self.choice1.isEnabled = true
            self.choice2.isEnabled = true
            self.choice3.isEnabled = true

            self.backButton.isEnabled = true
            self.homeButton.isEnabled = true
            self.replayButton.isEnabled = true

        }

    }
    
    func setupPuzzles() {
        switch currentLetter {
        case "b", "B":
            completePuzzle(imageOne: "puzzle-B-buh-end-row0-col0", imageTwo: "puzzle-B-buh-end-row0-col1", imageThree: "puzzle-B-buh-end-row0-col2", imageFour: "puzzle-B-buh-end-row1-col0", imageFive: "puzzle-B-buh-end-row1-col1", imageSix: "puzzle-B-buh-end-row1-col2", imageSeven: "puzzle-B-buh-end-row2-col0", imageEight: "puzzle-B-buh-end-row2-col1", imageNine: "puzzle-B-buh-end-row2-col2", imageTen: "puzzle-B-buh-end-row3-col0", imageEleven: "puzzle-B-buh-end-row3-col1", imageTwelve: "puzzle-B-buh-end-row3-col2")
        case "d","D":
            completePuzzle(imageOne: "puzzle-D-duh-end-row0-col0", imageTwo: "puzzle-D-duh-end-row0-col1", imageThree: "puzzle-D-duh-end-row0-col2", imageFour: "puzzle-D-duh-end-row1-col0", imageFive: "puzzle-D-duh-end-row1-col1", imageSix: "puzzle-D-duh-end-row1-col2", imageSeven: "puzzle-D-duh-end-row2-col0", imageEight: "puzzle-D-duh-end-row2-col1", imageNine: "puzzle-D-duh-end-row2-col2", imageTen: "puzzle-D-duh-end-row3-col0", imageEleven: "puzzle-D-duh-end-row3-col1", imageTwelve: "puzzle-D-duh-end-row3-col2")
        case "f","F":
            completePuzzle(imageOne: "puzzle-F-fuh-end-row0-col0", imageTwo: "puzzle-F-fuh-end-row0-col1", imageThree: "puzzle-F-fuh-end-row0-col2", imageFour: "puzzle-F-fuh-end-row1-col0", imageFive: "puzzle-F-fuh-end-row1-col1", imageSix: "puzzle-F-fuh-end-row1-col2", imageSeven: "puzzle-F-fuh-end-row2-col0", imageEight: "puzzle-F-fuh-end-row2-col1", imageNine: "puzzle-F-fuh-end-row2-col2", imageTen: "puzzle-F-fuh-end-row3-col0", imageEleven: "puzzle-F-fuh-end-row3-col1", imageTwelve: "puzzle-F-fuh-end-row3-col2")
        case "g","G":
            completePuzzle(imageOne: "puzzle-G-guh-end-row0-col0", imageTwo: "puzzle-G-guh-end-row0-col1", imageThree: "puzzle-G-guh-end-row0-col2", imageFour: "puzzle-G-guh-end-row1-col0", imageFive: "puzzle-G-guh-end-row1-col1", imageSix: "puzzle-G-guh-end-row1-col2", imageSeven: "puzzle-G-guh-end-row2-col0", imageEight: "puzzle-G-guh-end-row2-col1", imageNine: "puzzle-G-guh-end-row2-col2", imageTen: "puzzle-G-guh-end-row3-col0", imageEleven: "puzzle-G-guh-end-row3-col1", imageTwelve: "puzzle-G-guh-end-row3-col2")
        case "k","K":
            completePuzzle(imageOne: "puzzle-K-kuh-end-row0-col0", imageTwo: "puzzle-K-kuh-end-row0-col1", imageThree: "puzzle-K-kuh-end-row0-col2", imageFour: "puzzle-K-kuh-end-row1-col0", imageFive: "puzzle-K-kuh-end-row1-col1", imageSix: "puzzle-K-kuh-end-row1-col2", imageSeven: "puzzle-K-kuh-end-row2-col0", imageEight: "puzzle-K-kuh-end-row2-col1", imageNine: "puzzle-K-kuh-end-row2-col2", imageTen: "puzzle-K-kuh-end-row3-col0", imageEleven: "puzzle-K-kuh-end-row3-col1", imageTwelve: "puzzle-K-kuh-end-row3-col2")
        case "l","L":
            completePuzzle(imageOne: "puzzle-L-lll-end-row0-col0", imageTwo: "puzzle-L-lll-end-row0-col1", imageThree: "puzzle-L-lll-end-row0-col2", imageFour: "puzzle-L-lll-end-row1-col0", imageFive: "puzzle-L-lll-end-row1-col1", imageSix: "puzzle-L-lll-end-row1-col2", imageSeven: "puzzle-L-lll-end-row2-col0", imageEight: "puzzle-L-lll-end-row2-col1", imageNine: "puzzle-L-lll-end-row2-col2", imageTen: "puzzle-L-lll-end-row3-col0", imageEleven: "puzzle-L-lll-end-row3-col1", imageTwelve: "puzzle-L-lll-end-row3-col2")
        case "m","M":
            completePuzzle(imageOne: "puzzle-M-mmm-end-row0-col0", imageTwo: "puzzle-M-mmm-end-row0-col1", imageThree: "puzzle-M-mmm-end-row0-col2", imageFour: "puzzle-M-mmm-end-row1-col0", imageFive: "puzzle-M-mmm-end-row1-col1", imageSix: "puzzle-M-mmm-end-row1-col2", imageSeven: "puzzle-M-mmm-end-row2-col0", imageEight: "puzzle-M-mmm-end-row2-col1", imageNine: "puzzle-M-mmm-end-row2-col2", imageTen: "puzzle-M-mmm-end-row3-col0", imageEleven: "puzzle-M-mmm-end-row3-col1", imageTwelve: "puzzle-M-mmm-end-row3-col2")
        case "n","N":
            completePuzzle(imageOne: "puzzle-N-nnn-end-row0-col0", imageTwo: "puzzle-N-nnn-end-row0-col1", imageThree: "puzzle-N-nnn-end-row0-col2", imageFour: "puzzle-N-nnn-end-row1-col0", imageFive: "puzzle-N-nnn-end-row1-col1", imageSix: "puzzle-N-nnn-end-row1-col2", imageSeven: "puzzle-N-nnn-end-row2-col0", imageEight: "puzzle-N-nnn-end-row2-col1", imageNine: "puzzle-N-nnn-end-row2-col2", imageTen: "puzzle-N-nnn-end-row3-col0", imageEleven: "puzzle-N-nnn-end-row3-col1", imageTwelve: "puzzle-N-nnn-end-row3-col2")
        case "p","P":
            completePuzzle(imageOne: "puzzle-P-puh-end-row0-col0", imageTwo: "puzzle-P-puh-end-row0-col1", imageThree: "puzzle-P-puh-end-row0-col2", imageFour: "puzzle-P-puh-end-row1-col0", imageFive: "puzzle-P-puh-end-row1-col1", imageSix: "puzzle-P-puh-end-row1-col2", imageSeven: "puzzle-P-puh-end-row2-col0", imageEight: "puzzle-P-puh-end-row2-col1", imageNine: "puzzle-P-puh-end-row2-col2", imageTen: "puzzle-P-puh-end-row3-col0", imageEleven: "puzzle-P-puh-end-row3-col1", imageTwelve: "puzzle-P-puh-end-row3-col2")
        case "r","R":
            completePuzzle(imageOne: "puzzle-R-ruh-end-row0-col0", imageTwo: "puzzle-R-ruh-end-row0-col1", imageThree: "puzzle-R-ruh-end-row0-col2", imageFour: "puzzle-R-ruh-end-row1-col0", imageFive: "puzzle-R-ruh-end-row1-col1", imageSix: "puzzle-R-ruh-end-row1-col2", imageSeven: "puzzle-R-ruh-end-row2-col0", imageEight: "puzzle-R-ruh-end-row2-col1", imageNine: "puzzle-R-ruh-end-row2-col2", imageTen: "puzzle-R-ruh-end-row3-col0", imageEleven: "puzzle-R-ruh-end-row3-col1", imageTwelve: "puzzle-R-ruh-end-row3-col2")
        case "s","S":
            completePuzzle(imageOne: "puzzle-S-sss-row0-col0", imageTwo: "puzzle-S-sss-row0-col1", imageThree: "puzzle-S-sss-row0-col2", imageFour: "puzzle-S-sss-row1-col0", imageFive: "puzzle-S-sss-row1-col1", imageSix: "puzzle-S-sss-row1-col2", imageSeven: "puzzle-S-sss-row2-col0", imageEight: "puzzle-S-sss-row2-col1", imageNine: "puzzle-S-sss-row2-col2", imageTen: "puzzle-S-sss-row3-col0", imageEleven: "puzzle-S-sss-row3-col1", imageTwelve: "puzzle-S-sss-row3-col2")
        case "t","T":
            completePuzzle(imageOne: "puzzle-T-tttt-end-row0-col0", imageTwo: "puzzle-T-tttt-end-row0-col1", imageThree: "puzzle-T-tttt-end-row0-col2", imageFour: "puzzle-T-tttt-end-row1-col0", imageFive: "puzzle-T-tttt-end-row1-col1", imageSix: "puzzle-T-tttt-end-row1-col2", imageSeven: "puzzle-T-tttt-end-row2-col0", imageEight: "puzzle-T-tttt-end-row2-col1", imageNine: "puzzle-T-tttt-end-row2-col2", imageTen: "puzzle-T-tttt-end-row3-col0", imageEleven: "puzzle-T-tttt-end-row3-col1", imageTwelve: "puzzle-T-tttt-end-row3-col2")
        case "x","X":
            completePuzzle(imageOne: "puzzle-X-ks-end-row0-col0", imageTwo: "puzzle-X-ks-end-row0-col1", imageThree: "puzzle-X-ks-end-row0-col2", imageFour: "puzzle-X-ks-end-row1-col0", imageFive: "puzzle-X-ks-end-row1-col1", imageSix: "puzzle-X-ks-end-row1-col2", imageSeven: "puzzle-X-ks-end-row2-col0", imageEight: "puzzle-X-ks-end-row2-col1", imageNine: "puzzle-X-ks-end-row2-col2", imageTen: "puzzle-X-ks-end-row3-col0", imageEleven: "puzzle-X-ks-end-row3-col1", imageTwelve: "puzzle-X-ks-end-row3-col2")
        case "z","Z":
            completePuzzle(imageOne: "puzzle-Z-zzz-end-row0-col0", imageTwo: "puzzle-Z-zzz-end-row0-col1", imageThree: "puzzle-Z-zzz-end-row0-col2", imageFour: "puzzle-Z-zzz-end-row1-col0", imageFive: "puzzle-Z-zzz-end-row1-col1", imageSix: "puzzle-Z-zzz-end-row1-col2", imageSeven: "puzzle-Z-zzz-end-row2-col0", imageEight: "puzzle-Z-zzz-end-row2-col1", imageNine: "puzzle-Z-zzz-end-row2-col2", imageTen: "puzzle-Z-zzz-end-row3-col0", imageEleven: "puzzle-Z-zzz-end-row3-col1", imageTwelve: "puzzle-Z-zzz-end-row3-col2")
        default:
            break
        }
    }
    
//    @IBAction func choiceButtons(_ sender: Any) {
//        var saveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsStarCount")
//
//        if (sender as! UIButton) == correctButton {
//            correctButtonAnimation()
//            var currScore:Int = saveFile![currentLetter.lowercased()] as! Int
//            if currScore < 5 {
//                currScore += 1
//                saveFile![currentLetter.lowercased()] = currScore
//                UserDefaults.standard.set(saveFile, forKey: "endingSoundsStarCount")
//            }
//            // add 1 to coin count
//            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "coinCount") + 1, forKey: "coinCount")
//            // disable button to avoid tapping during animation
//            (sender as! UIButton).isEnabled = false
//
//            // ANIMATION BLOCK //
//            // backup center points
//            let c1 = self.choice1.center
//            let c2 = self.choice2.center
//            let c3 = self.choice3.center
//            // play animation
//            UIView.animate(withDuration: 1, animations: {
//                // center correct choice
//                var center = self.choice1.center
//                center.y += 90
//                (sender as! UIButton).center = center
//                // fade others if not correct choice
//                if self.choice1 != (sender as! UIButton) {
//                    self.choice1.alpha = 0.0
//                }
//                if self.choice2 != (sender as! UIButton) {
//                    self.choice2.alpha = 0.0
//                }
//                if self.choice3 != (sender as! UIButton) {
//                    self.choice3.alpha = 0.0
//                }
//            }, completion: { done in // excutes only after animation complete
//                if done {
//                    // sleep 1 second to keep answer on screen longer
//                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute : {
//                        // hide letter to avoid pop in
//                        (sender as! UIButton).alpha = 0.0
//                        // assign new choices and layout
//                        self.setupChoices()
//                        // reset positions
//                        self.choice1.center = c1
//                        self.choice2.center = c2
//                        self.choice3.center = c3
//                        UIView.animate(withDuration: 0.5, animations: {
//                            // show hidden letter with grace (if no use animation will pop)
//                            self.choice1.alpha = 1.0
//                            self.choice2.alpha = 1.0
//                            self.choice3.alpha = 1.0
//                        })
//                        // reenable button
//                        (sender as! UIButton).isEnabled = true
//                    })
//                }
//            })
//        } else {
//            playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice2.currentTitle!, thirdChoice: choice3.currentTitle!)
//            var currScore:Int = saveFile![currentLetter.lowercased()] as! Int
//            if currScore > 0 {
//                currScore -= 1
//                saveFile![currentLetter.lowercased()] = currScore
//                UserDefaults.standard.set(saveFile, forKey: "endingSoundsStarCount")
//            }
//        }
//    }
    
    
    @IBAction func choiceButtons(_ sender: Any) {
        var saveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsStarCount")
        

        if (sender as! UIButton) == correctButton {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "coinCount") + 1, forKey: "coinCount")
            
            
            var currScore:Int = saveFile![currentLetter.lowercased()] as! Int
            currScore += 1
            if currScore < 12 {
                while puzzleIncrement > 0{
                    correctButtonAnimation()
                    puzzleIncrement -= 1
                }
                puzzleIncrement = 2
                if currScore < 6{
                    saveFile![currentLetter.lowercased()] = currScore
                    UserDefaults.standard.set(saveFile, forKey: "endingSoundsStarCount")
                }
                
            }
            // disable button to avoid tapping during animation
            (sender as! UIButton).isEnabled = false
            // ANIMATION BLOCK //
            // backup center points
            let c1 = self.choice1.center
            let c2 = self.choice2.center
            let c3 = self.choice3.center
            // play animation
            UIView.animate(withDuration: 1, animations: {
                // center correct choice
                var center = self.choice1.center
                center.y += 90
                (sender as! UIButton).center = center
                // fade others if not correct choice
                if self.choice1 != (sender as! UIButton) {
                    self.choice1.alpha = 0.0
                }
                if self.choice2 != (sender as! UIButton) {
                    self.choice2.alpha = 0.0
                }
                if self.choice3 != (sender as! UIButton) {
                    self.choice3.alpha = 0.0
                }
            }, completion: { done in // excutes only after animation complete
                if done {
                    // sleep 1 second to keep answer on screen longer
                    Dispatch.DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute : {
                        // hide letter to avoid pop in
                        (sender as! UIButton).alpha = 0.0
                        // assign new choices and layout
                        let saveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsPuzzleProgress")
                        let puzprog:Int = saveFile![self.currentLetter.lowercased()] as! Int
                        //print(puzprog)
                        if puzprog != 13 && puzprog != 14 {
                            self.setupChoices()
                        }

                        // reset positions
                        self.choice1.center = c1
                        self.choice2.center = c2
                        self.choice3.center = c3
                        UIView.animate(withDuration: 0.5, animations: {
                            // show hidden letter with grace (if no use animation will pop)
                            self.choice1.alpha = 1.0
                            self.choice2.alpha = 1.0
                            self.choice3.alpha = 1.0
                        })
                        // re enable button
                        
                    })
                }
            })
    } else {
        if puzzleIncrement > 0{
            puzzleIncrement -= 1
        }
        choice1.isEnabled = false
        choice2.isEnabled = false
        choice3.isEnabled = false
        backButton.isEnabled = false
        homeButton.isEnabled = false
        replayButton.isEnabled = false
        
        playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice2.currentTitle!, thirdChoice: choice3.currentTitle!)
        }
        
        let seconds = 8.0
        Dispatch.DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {

            self.choice1.isEnabled = true
            self.choice2.isEnabled = true
            self.choice3.isEnabled = true
         
            self.backButton.isEnabled = true
            self.homeButton.isEnabled = true
            self.replayButton.isEnabled = true

        }
    }
    
    func correctButtonAnimation(){
        switch currentLetter {
        case "b", "B":
            correctButtonTapped(imageOne: "puzzle-B-buh-end-row0-col0", imageTwo: "puzzle-B-buh-end-row0-col1", imageThree: "puzzle-B-buh-end-row0-col2", imageFour: "puzzle-B-buh-end-row1-col0", imageFive: "puzzle-B-buh-end-row1-col1", imageSix: "puzzle-B-buh-end-row1-col2", imageSeven: "puzzle-B-buh-end-row2-col0", imageEight: "puzzle-B-buh-end-row2-col1", imageNine: "puzzle-B-buh-end-row2-col2", imageTen: "puzzle-B-buh-end-row3-col0", imageEleven: "puzzle-B-buh-end-row3-col1", imageTwelve: "puzzle-B-buh-end-row3-col2")
        case "d","D":
            correctButtonTapped(imageOne: "puzzle-D-duh-end-row0-col0", imageTwo: "puzzle-D-duh-end-row0-col1", imageThree: "puzzle-D-duh-end-row0-col2", imageFour: "puzzle-D-duh-end-row1-col0", imageFive: "puzzle-D-duh-end-row1-col1", imageSix: "puzzle-D-duh-end-row1-col2", imageSeven: "puzzle-D-duh-end-row2-col0", imageEight: "puzzle-D-duh-end-row2-col1", imageNine: "puzzle-D-duh-end-row2-col2", imageTen: "puzzle-D-duh-end-row3-col0", imageEleven: "puzzle-D-duh-end-row3-col1", imageTwelve: "puzzle-D-duh-end-row3-col2")
        case "f","F":
            correctButtonTapped(imageOne: "puzzle-F-fuh-end-row0-col0", imageTwo: "puzzle-F-fuh-end-row0-col1", imageThree: "puzzle-F-fuh-end-row0-col2", imageFour: "puzzle-F-fuh-end-row1-col0", imageFive: "puzzle-F-fuh-end-row1-col1", imageSix: "puzzle-F-fuh-end-row1-col2", imageSeven: "puzzle-F-fuh-end-row2-col0", imageEight: "puzzle-F-fuh-end-row2-col1", imageNine: "puzzle-F-fuh-end-row2-col2", imageTen: "puzzle-F-fuh-end-row3-col0", imageEleven: "puzzle-F-fuh-end-row3-col1", imageTwelve: "puzzle-F-fuh-end-row3-col2")
        case "g","G":
            correctButtonTapped(imageOne: "puzzle-G-guh-end-row0-col0", imageTwo: "puzzle-G-guh-end-row0-col1", imageThree: "puzzle-G-guh-end-row0-col2", imageFour: "puzzle-G-guh-end-row1-col0", imageFive: "puzzle-G-guh-end-row1-col1", imageSix: "puzzle-G-guh-end-row1-col2", imageSeven: "puzzle-G-guh-end-row2-col0", imageEight: "puzzle-G-guh-end-row2-col1", imageNine: "puzzle-G-guh-end-row2-col2", imageTen: "puzzle-G-guh-end-row3-col0", imageEleven: "puzzle-G-guh-end-row3-col1", imageTwelve: "puzzle-G-guh-end-row3-col2")
        case "k","K":
            correctButtonTapped(imageOne: "puzzle-K-kuh-end-row0-col0", imageTwo: "puzzle-K-kuh-end-row0-col1", imageThree: "puzzle-K-kuh-end-row0-col2", imageFour: "puzzle-K-kuh-end-row1-col0", imageFive: "puzzle-K-kuh-end-row1-col1", imageSix: "puzzle-K-kuh-end-row1-col2", imageSeven: "puzzle-K-kuh-end-row2-col0", imageEight: "puzzle-K-kuh-end-row2-col1", imageNine: "puzzle-K-kuh-end-row2-col2", imageTen: "puzzle-K-kuh-end-row3-col0", imageEleven: "puzzle-K-kuh-end-row3-col1", imageTwelve: "puzzle-K-kuh-end-row3-col2")
        case "l","L":
            correctButtonTapped(imageOne: "puzzle-L-lll-end-row0-col0", imageTwo: "puzzle-L-lll-end-row0-col1", imageThree: "puzzle-L-lll-end-row0-col2", imageFour: "puzzle-L-lll-end-row1-col0", imageFive: "puzzle-L-lll-end-row1-col1", imageSix: "puzzle-L-lll-end-row1-col2", imageSeven: "puzzle-L-lll-end-row2-col0", imageEight: "puzzle-L-lll-end-row2-col1", imageNine: "puzzle-L-lll-end-row2-col2", imageTen: "puzzle-L-lll-end-row3-col0", imageEleven: "puzzle-L-lll-end-row3-col1", imageTwelve: "puzzle-L-lll-end-row3-col2")
        case "m","M":
            correctButtonTapped(imageOne: "puzzle-M-mmm-end-row0-col0", imageTwo: "puzzle-M-mmm-end-row0-col1", imageThree: "puzzle-M-mmm-end-row0-col2", imageFour: "puzzle-M-mmm-end-row1-col0", imageFive: "puzzle-M-mmm-end-row1-col1", imageSix: "puzzle-M-mmm-end-row1-col2", imageSeven: "puzzle-M-mmm-end-row2-col0", imageEight: "puzzle-M-mmm-end-row2-col1", imageNine: "puzzle-M-mmm-end-row2-col2", imageTen: "puzzle-M-mmm-end-row3-col0", imageEleven: "puzzle-M-mmm-end-row3-col1", imageTwelve: "puzzle-M-mmm-end-row3-col2")
        case "n","N":
            correctButtonTapped(imageOne: "puzzle-N-nnn-end-row0-col0", imageTwo: "puzzle-N-nnn-end-row0-col1", imageThree: "puzzle-N-nnn-end-row0-col2", imageFour: "puzzle-N-nnn-end-row1-col0", imageFive: "puzzle-N-nnn-end-row1-col1", imageSix: "puzzle-N-nnn-end-row1-col2", imageSeven: "puzzle-N-nnn-end-row2-col0", imageEight: "puzzle-N-nnn-end-row2-col1", imageNine: "puzzle-N-nnn-end-row2-col2", imageTen: "puzzle-N-nnn-end-row3-col0", imageEleven: "puzzle-N-nnn-end-row3-col1", imageTwelve: "puzzle-N-nnn-end-row3-col2")
        case "p","P":
            correctButtonTapped(imageOne: "puzzle-P-puh-end-row0-col0", imageTwo: "puzzle-P-puh-end-row0-col1", imageThree: "puzzle-P-puh-end-row0-col2", imageFour: "puzzle-P-puh-end-row1-col0", imageFive: "puzzle-P-puh-end-row1-col1", imageSix: "puzzle-P-puh-end-row1-col2", imageSeven: "puzzle-P-puh-end-row2-col0", imageEight: "puzzle-P-puh-end-row2-col1", imageNine: "puzzle-P-puh-end-row2-col2", imageTen: "puzzle-P-puh-end-row3-col0", imageEleven: "puzzle-P-puh-end-row3-col1", imageTwelve: "puzzle-P-puh-end-row3-col2")
        case "r","R":
            correctButtonTapped(imageOne: "puzzle-R-ruh-end-row0-col0", imageTwo: "puzzle-R-ruh-end-row0-col1", imageThree: "puzzle-R-ruh-end-row0-col2", imageFour: "puzzle-R-ruh-end-row1-col0", imageFive: "puzzle-R-ruh-end-row1-col1", imageSix: "puzzle-R-ruh-end-row1-col2", imageSeven: "puzzle-R-ruh-end-row2-col0", imageEight: "puzzle-R-ruh-end-row2-col1", imageNine: "puzzle-R-ruh-end-row2-col2", imageTen: "puzzle-R-ruh-end-row3-col0", imageEleven: "puzzle-R-ruh-end-row3-col1", imageTwelve: "puzzle-R-ruh-end-row3-col2")
        case "s","S":
            correctButtonTapped(imageOne: "puzzle-S-sss-row0-col0", imageTwo: "puzzle-S-sss-row0-col1", imageThree: "puzzle-S-sss-row0-col2", imageFour: "puzzle-S-sss-row1-col0", imageFive: "puzzle-S-sss-row1-col1", imageSix: "puzzle-S-sss-row1-col2", imageSeven: "puzzle-S-sss-row2-col0", imageEight: "puzzle-S-sss-row2-col1", imageNine: "puzzle-S-sss-row2-col2", imageTen: "puzzle-S-sss-row3-col0", imageEleven: "puzzle-S-sss-row3-col1", imageTwelve: "puzzle-S-sss-row3-col2")
        case "t","T":
            correctButtonTapped(imageOne: "puzzle-T-tttt-end-row0-col0", imageTwo: "puzzle-T-tttt-end-row0-col1", imageThree: "puzzle-T-tttt-end-row0-col2", imageFour: "puzzle-T-tttt-end-row1-col0", imageFive: "puzzle-T-tttt-end-row1-col1", imageSix: "puzzle-T-tttt-end-row1-col2", imageSeven: "puzzle-T-tttt-end-row2-col0", imageEight: "puzzle-T-tttt-end-row2-col1", imageNine: "puzzle-T-tttt-end-row2-col2", imageTen: "puzzle-T-tttt-end-row3-col0", imageEleven: "puzzle-T-tttt-end-row3-col1", imageTwelve: "puzzle-T-tttt-end-row3-col2")
        case "x","X":
            correctButtonTapped(imageOne: "puzzle-X-ks-end-row0-col0", imageTwo: "puzzle-X-ks-end-row0-col1", imageThree: "puzzle-X-ks-end-row0-col2", imageFour: "puzzle-X-ks-end-row1-col0", imageFive: "puzzle-X-ks-end-row1-col1", imageSix: "puzzle-X-ks-end-row1-col2", imageSeven: "puzzle-X-ks-end-row2-col0", imageEight: "puzzle-X-ks-end-row2-col1", imageNine: "puzzle-X-ks-end-row2-col2", imageTen: "puzzle-X-ks-end-row3-col0", imageEleven: "puzzle-X-ks-end-row3-col1", imageTwelve: "puzzle-X-ks-end-row3-col2")
        case "z","Z":
            correctButtonTapped(imageOne: "puzzle-Z-zzz-end-row0-col0", imageTwo: "puzzle-Z-zzz-end-row0-col1", imageThree: "puzzle-Z-zzz-end-row0-col2", imageFour: "puzzle-Z-zzz-end-row1-col0", imageFive: "puzzle-Z-zzz-end-row1-col1", imageSix: "puzzle-Z-zzz-end-row1-col2", imageSeven: "puzzle-Z-zzz-end-row2-col0", imageEight: "puzzle-Z-zzz-end-row2-col1", imageNine: "puzzle-Z-zzz-end-row2-col2", imageTen: "puzzle-Z-zzz-end-row3-col0", imageEleven: "puzzle-Z-zzz-end-row3-col1", imageTwelve: "puzzle-Z-zzz-end-row3-col2")
        default:
            break
        }
    }
    
    
    func correctButtonTapped(imageOne: String, imageTwo: String, imageThree: String, imageFour: String, imageFive: String, imageSix: String, imageSeven: String, imageEight: String, imageNine: String, imageTen: String, imageEleven: String, imageTwelve: String) {
        var saveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsPuzzleProgress")
        var progress:Int = saveFile![currentLetter.lowercased()] as! Int
        
        if progress == 1 {
            puzzleFive.setImage(UIImage(named: imageFive), for: .normal)
            self.animate(mybutton: puzzleFive)
        }
        if progress == 2{
            puzzleNine.setImage(UIImage(named: imageNine), for: .normal)
            self.animate(mybutton: puzzleNine)
        }
        if progress == 3 {
            puzzleTen.setImage(UIImage(named: imageTen), for: .normal)
            self.animate(mybutton: puzzleTen)
        }
        if progress == 4{
            puzzleSeven.setImage(UIImage(named: imageSeven), for: .normal)
            self.animate(mybutton: puzzleSeven)
        }
        if progress == 5{
            puzzleSix.setImage(UIImage(named: imageSix), for: .normal)
            self.animate(mybutton: puzzleSix)
        }
        if progress == 6{
            puzzleTwelve.setImage(UIImage(named: imageTwelve), for: .normal)
            self.animate(mybutton: puzzleTwelve)
        }
        if progress == 7 {
            puzzleEight.setImage(UIImage(named: imageEight), for: .normal)
            self.animate(mybutton: puzzleEight)
        }
        if progress == 8{
            puzzleEleven.setImage(UIImage(named: imageEleven), for: .normal)
            self.animate(mybutton: puzzleEleven)
        }
        if progress == 9{
            puzzleTwo.setImage(UIImage(named: imageTwo), for: .normal)
            self.animate(mybutton: puzzleTwo)
        }
        if progress == 10{
            puzzleThree.setImage(UIImage(named: imageThree), for: .normal)
            self.animate(mybutton: puzzleThree)
        }
        if progress == 11{
            puzzleOne.setImage(UIImage(named: imageOne), for: .normal)
            self.animate(mybutton: puzzleFour)
        }
        if progress == 12 {
            puzzleFour.setImage(UIImage(named: imageFour), for: .normal)
            self.animate(mybutton: puzzleOne)
            self.animate(mybutton: puzzleFour)
            puzzleOne.addTarget(self, action: #selector(self.puzzleTapped), for: .touchUpInside)
            let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
            vc.passedInLetter = currentLetter
            vc.letterCategory = "end"
            present(vc, animated: true)
        }
        progress += 1
        playCorrectAudio()
        
        saveFile![currentLetter.lowercased()] = progress
        
        UserDefaults.standard.set(saveFile, forKey: "endingSoundsPuzzleProgress")
    }
    
    
    func completePuzzle(imageOne: String, imageTwo: String, imageThree: String, imageFour: String, imageFive: String, imageSix: String, imageSeven: String, imageEight: String, imageNine: String, imageTen: String, imageEleven: String, imageTwelve: String) {
        let saveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsPuzzleProgress")

        let progress:Int = saveFile![currentLetter.lowercased()] as! Int

        UserDefaults.standard.set(saveFile, forKey: "endingSoundsPuzzleProgress")

        if progress > 1 {
            puzzleFive.setImage(UIImage(named: imageFive), for: .normal)
        }
        if progress > 2 {
            puzzleNine.setImage(UIImage(named: imageNine), for: .normal)
        }
        if progress > 3 {
            puzzleTen.setImage(UIImage(named: imageTen), for: .normal)
        }
        if progress > 4 {
            puzzleSeven.setImage(UIImage(named: imageSeven), for: .normal)
        }
        if progress > 5 {
            puzzleSix.setImage(UIImage(named: imageSix), for: .normal)
        }
        if progress > 6 {
            puzzleTwelve.setImage(UIImage(named: imageTwelve), for: .normal)
        }
        if progress > 7 {
            puzzleEight.setImage(UIImage(named: imageEight), for: .normal)
        }
        if progress > 8 {
            puzzleEleven.setImage(UIImage(named: imageEleven), for: .normal)
        }
        if progress > 9 {
            puzzleTwo.setImage(UIImage(named: imageTwo), for: .normal)
        }
        if progress > 10 {
            puzzleThree.setImage(UIImage(named: imageThree), for: .normal)
        }
        if progress > 11 {
            puzzleOne.setImage(UIImage(named: imageOne), for: .normal)
        }
        if progress > 12 {
            puzzleFour.setImage(UIImage(named: imageFour), for: .normal)
            
            puzzleOne.addTarget(self, action: #selector(self.puzzleTapped), for: .touchUpInside)
        }

    }
    
    @objc func puzzleTapped(sender: UIButton) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
        vc.passedInLetter = currentLetter
        vc.letterCategory = "end"
        present(vc, animated: true)
    }
    
    
    func getRandomChoices(firstPic: Int, secondPic: Int, thirdPic: Int) {
        let correct = Int.random(in: firstPic..<(thirdPic + 1))
        correctImage = images[correct]
        wrongOne = images.randomElement()
        wrongTwo = images.randomElement()
        while (wrongOne == images[firstPic] || wrongOne == images[secondPic] ||  wrongOne == images[thirdPic]) {
            wrongOne = images.randomElement()
        }
        while (wrongTwo == images[firstPic] || wrongTwo == images[secondPic] || wrongTwo == images[thirdPic] || wrongTwo == wrongOne) {
            wrongTwo = images.randomElement()
        }
    }
    
    //play audio for each letter
    @IBAction func tapLetter(_ sender: Any) {
        playIndividualLetterAudio(letter: letterButton.currentTitle!)
    }
    
    func animate(mybutton: UIButton) {
        UIView.animate(withDuration: 1.0, animations:{
            mybutton.frame = CGRect(x: mybutton.frame.origin.x, y: mybutton.frame.origin.y - 5, width: mybutton.frame.size.width, height: mybutton.frame.size.height)
        }, completion: {done in
            if done {
                UIView.animate(withDuration: 1.0, animations:{
                    mybutton.frame = CGRect(x: mybutton.frame.origin.x, y: mybutton.frame.origin.y + 5, width: mybutton.frame.size.width, height: mybutton.frame.size.height)
                }, completion:  {done in
                    if done {
                    }
                })
            }
        })
    }
    
    // play correct selection audio
    func playCorrectAudio() {
        let pathToSound = Bundle.main.path(forResource: "alphabetQuiz_correct", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    
    func playFullAudio(currentLetter: String, firstChoice: String, secondChoice: String, thirdChoice: String) {
        playIndividualLetterAudio(letter: currentLetter)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            self.playAudio(audioName: firstChoice)
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            self.playAudio(audioName: secondChoice)
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(6), execute: {
            self.playAudio(audioName: thirdChoice)
        })
    }
    
    func playIndividualLetterAudio(letter: String) {
        switch letter {
        case "b","B":
            playAudio(audioName: "buh")
        case "d","D":
            playAudio(audioName: "duh")
        case "f","F":
            playAudio(audioName: "fuh")
        case "g","G":
            playAudio(audioName: "guh")
        case "k","K":
            playAudio(audioName: "kuh")
        case "l","L":
            playAudio(audioName: "ull")
        case "m","M":
            playAudio(audioName: "mmm")
        case "n","N":
            playAudio(audioName: "nnn")
        case "p","P":
            playAudio(audioName: "puh")
        case "r","R":
            playAudio(audioName: "err")
        case "s","S":
            playAudio(audioName: "sss")
        case "t","T":
            playAudio(audioName: "ttt")
        case "x","X":
            playAudio(audioName: "kss")
        case "z","Z":
            playAudio(audioName: "zzz")
        default:
            break
        }
    }
    
    func playAudio(audioName: String) {
        let pathToSound = Bundle.main.path(forResource: audioName, ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
//        let vc = UIHostingController(rootView: PuzzleView())
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        audioPlayer?.stop()
        choice1.isEnabled = false
        choice2.isEnabled = false
        choice3.isEnabled = false
        backButton.isEnabled = false
        homeButton.isEnabled = false
        replayButton.isEnabled = false
        
        playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice2.currentTitle!, thirdChoice: choice3.currentTitle!)
        
        
        let seconds = 8.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {

            self.choice1.isEnabled = true
            self.choice2.isEnabled = true
            self.choice3.isEnabled = true
         
            self.backButton.isEnabled = true
            self.homeButton.isEnabled = true
            self.replayButton.isEnabled = true

        }
    }

}

