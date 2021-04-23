
//
//  VowelQuizViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 4/6/21.
//


import UIKit
import AVFoundation
import SwiftUI



class VowelQuizViewController: UIViewController {
    
    
    var images = ["bat", "cat", "ax", "ball", "fall", "swan", "elf", "bed", "net", "mittens", "hit", "fish", "taxi", "yeti", "skis", "fox","pot", "hot","bug","bus","cut"]
    
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
    
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var replayButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var puzzleButton: UIButton!
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArray: [String]!
    
    // choice buttons variables outlet
    @IBOutlet var letterButton: UIButton!
    @IBOutlet weak var choice1: UIButton!;
    @IBOutlet weak var choice2: UIButton!;
    @IBOutlet weak var choice3: UIButton!;
    
    // audio player
    var audioPlayer: AVAudioPlayer?
    
    // other globals
    var currentArray: Array<String>!
    var currentLetter: String!
    
    var correctImage: String!
    var wrongOne: String!
    var wrongTwo: String!
    
    var correctButton: UIButton!
    var increment = 2
    
    // reference to different storyboards
    let VowelLetterStoryBoard:UIStoryboard = UIStoryboard(name: "VowelLetter", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letterButton.setTitle(passedInLetter, for: .normal)
        
        
        puzzleOne = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.addSubview(puzzleOne)
        puzzleTwo = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTwo, belowSubview: puzzleOne)
        puzzleThree = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleThree, belowSubview: puzzleTwo)
        puzzleFour = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleFour, belowSubview: puzzleThree)
        puzzleFive = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleFive, belowSubview: puzzleFour)
        puzzleSix = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleSix, belowSubview: puzzleFive)
        puzzleSeven = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleSeven, belowSubview: puzzleSix)
        puzzleEight = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleEight, belowSubview: puzzleSeven)
        puzzleNine = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleNine, belowSubview: puzzleEight)
        puzzleTen = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTen, belowSubview: puzzleNine)
        puzzleEleven = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleEleven, belowSubview: puzzleTen)
        puzzleTwelve = UIButton(frame: CGRect(x: 150, y: 110, width: 220, height: 260))
        self.view.insertSubview(puzzleTwelve, belowSubview: puzzleEleven)
        
        currentArray = passedInArray
        currentLetter = passedInLetter
        // set up choices
        setupChoices()
        // set up puzzles
        setupPuzzles()
    }
    
    func setupChoices() {
        switch currentLetter {
        case "a", "A":
            getRandomChoices(firstPic: 0, secondPic: 1, thirdPic: 2)
        case "a ","A ":
            getRandomChoices(firstPic: 3, secondPic: 4, thirdPic: 5)
        case "e","E":
            getRandomChoices(firstPic: 6, secondPic: 7, thirdPic: 8)
        case "i","I":
            getRandomChoices(firstPic: 9, secondPic: 10, thirdPic: 11)
        case "i ","I ":
            getRandomChoices(firstPic: 12, secondPic: 13, thirdPic: 14)
        case "o","O":
            getRandomChoices(firstPic: 15, secondPic: 16, thirdPic: 17)
        case "u","U":
            getRandomChoices(firstPic: 18, secondPic: 19, thirdPic: 20)
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
  
            choice1.isEnabled = false
            choice2.isEnabled = false
            choice3.isEnabled = false
            backButton.isEnabled = false
            homeButton.isEnabled = false
            replayButton.isEnabled = false



            let seconds = 6.0
            
            playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice3.currentTitle!, thirdChoice: choice2.currentTitle!)

            
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
 
                self.choice1.isEnabled = true
                self.choice2.isEnabled = true
                self.choice3.isEnabled = true
                self.backButton.isEnabled = true
                self.homeButton.isEnabled = true
                self.replayButton.isEnabled = true


            }
            
        case 1:
            choice1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            choice1.setTitle(wrongOne, for: .normal)
            choice2.setImage(UIImage(named: correctImage), for: .normal)
            choice2.setTitle(correctImage, for: .normal)
            choice3.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            choice3.setTitle(wrongTwo, for: .normal)
            correctButton = choice2

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
        case 2:
            choice1.setImage(UIImage(named: String(wrongOne!)), for: .normal)
            choice1.setTitle(wrongOne, for: .normal)
            choice2.setImage(UIImage(named: String(wrongTwo!)), for: .normal)
            choice2.setTitle(wrongTwo, for: .normal)
            choice3.setImage(UIImage(named: correctImage), for: .normal)
            choice3.setTitle(correctImage, for: .normal)
            correctButton = choice3
  
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
        default:
            break
        }
        
        
        
    }
    
    func setupPuzzles() {
        switch currentLetter {
        case "a", "A":
            completePuzzle(imageOne: "puzzle-A-short-row0-col0", imageTwo: "puzzle-A-short-row0-col1", imageThree: "puzzle-A-short-row0-col2", imageFour: "puzzle-A-short-row1-col0", imageFive: "puzzle-A-short-row1-col1", imageSix: "puzzle-A-short-row1-col2", imageSeven: "puzzle-A-short-row2-col0", imageEight: "puzzle-A-short-row2-col1", imageNine: "puzzle-A-short-row2-col2", imageTen: "puzzle-A-short-row3-col0", imageEleven: "puzzle-A-short-row3-col1", imageTwelve: "puzzle-A-short-row3-col2")
        case "a ","A ":
            completePuzzle(imageOne: "puzzle-A-ahh-row0-col0", imageTwo: "puzzle-A-ahh-row0-col1", imageThree: "puzzle-A-ahh-row0-col2", imageFour: "puzzle-A-ahh-row1-col0", imageFive: "puzzle-A-ahh-row1-col1", imageSix: "puzzle-A-ahh-row1-col2", imageSeven: "puzzle-A-ahh-row2-col0", imageEight: "puzzle-A-ahh-row2-col1", imageNine: "puzzle-A-ahh-row2-col2", imageTen: "puzzle-A-ahh-row3-col0", imageEleven: "puzzle-A-ahh-row3-col1", imageTwelve: "puzzle-A-ahh-row3-col2")
        case "e","E":
            completePuzzle(imageOne: "puzzle-E-short-row0-col0", imageTwo: "puzzle-E-short-row0-col1", imageThree: "puzzle-E-short-row0-col2", imageFour: "puzzle-E-short-row1-col0", imageFive: "puzzle-E-short-row1-col1", imageSix: "puzzle-E-short-row1-col2", imageSeven: "puzzle-E-short-row2-col0", imageEight: "puzzle-E-short-row2-col1", imageNine: "puzzle-E-short-row2-col2", imageTen: "puzzle-E-short-row3-col0", imageEleven: "puzzle-E-short-row3-col1", imageTwelve: "puzzle-E-short-row3-col2")
        case "i","I":
            completePuzzle(imageOne: "puzzle-I-short-row0-col0", imageTwo: "puzzle-I-short-row0-col1", imageThree: "puzzle-I-short-row0-col2", imageFour: "puzzle-I-short-row1-col0", imageFive: "puzzle-I-short-row1-col1", imageSix: "puzzle-I-short-row1-col2", imageSeven: "puzzle-I-short-row2-col0", imageEight: "puzzle-I-short-row2-col1", imageNine: "puzzle-I-short-row2-col2", imageTen: "puzzle-I-short-row3-col0", imageEleven: "puzzle-I-short-row3-col1", imageTwelve: "puzzle-I-short-row3-col2")
        case "i ","I ":
            completePuzzle(imageOne: "puzzle-I-ee-row0-col1", imageTwo: "puzzle-I-ee-row0-col1", imageThree: "puzzle-I-ee-row0-col2", imageFour: "puzzle-I-ee-row1-col0", imageFive: "puzzle-I-ee-row1-col1", imageSix: "puzzle-I-ee-row1-col2", imageSeven: "puzzle-I-ee-row2-col0", imageEight: "puzzle-I-ee-row2-col1", imageNine: "puzzle-I-ee-row2-col2", imageTen: "puzzle-I-ee-row3-col0", imageEleven: "puzzle-I-ee-row3-col1", imageTwelve: "puzzle-I-ee-row3-col2")
        case "o","O":
            completePuzzle(imageOne: "puzzle-O-short-row0-col0", imageTwo: "puzzle-O-short-row0-col1", imageThree: "puzzle-O-short-row0-col2", imageFour: "puzzle-O-short-row1-col0", imageFive: "puzzle-O-short-row1-col1", imageSix: "puzzle-O-short-row1-col2", imageSeven: "puzzle-O-short-row2-col0", imageEight: "puzzle-O-short-row2-col1", imageNine: "puzzle-O-short-row2-col2", imageTen: "puzzle-O-short-row3-col0", imageEleven: "puzzle-O-short-row3-col1", imageTwelve: "puzzle-O-short-row3-col2")
        case "u","U":
            completePuzzle(imageOne: "puzzle-U-short-row0-col0", imageTwo: "puzzle-U-short-row0-col1", imageThree: "puzzle-U-short-row0-col2", imageFour: "puzzle-U-short-row1-col0", imageFive: "puzzle-U-short-row1-col1", imageSix: "puzzle-U-short-row1-col2", imageSeven: "puzzle-U-short-row2-col0", imageEight: "puzzle-U-short-row2-col1", imageNine: "puzzle-U-short-row2-col2", imageTen: "puzzle-U-short-row3-col0", imageEleven: "puzzle-U-short-row3-col1", imageTwelve: "puzzle-U-short-row3-col2")
        default:
            break
        }
    }
    
    @IBAction func choiceButtons(_ sender: Any) {
        var saveFile = UserDefaults.standard.dictionary(forKey: "vowelStarCount")
        
        
        

        if (sender as! UIButton) == correctButton {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "coinCount") + 1, forKey: "coinCount")
            
            
            var currScore:Int = saveFile![currentLetter] as! Int
            currScore += 1
            if currScore < 12 {
                while increment > 0{
                    correctButtonAnimation()
                    increment -= 1
                }
                increment = 2
                if currScore < 6{
                    saveFile![currentLetter] = currScore
                    UserDefaults.standard.set(saveFile, forKey: "vowelStarCount")
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
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute : {
                        // hide letter to avoid pop in
                        (sender as! UIButton).alpha = 0.0
                        // assign new choices and layout
                        
                        // rubbish fix for overlapping quiz sound
                        let yourcodeissobadxhy = UserDefaults.standard.dictionary(forKey: "VowelPuzzleProgress")
                        let puzprog:Int = yourcodeissobadxhy![self.currentLetter] as! Int
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
        if increment > 0{
            increment -= 1
        }
       // playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice2.currentTitle!, thirdChoice: choice3.currentTitle!)
        }
    }
    
    func correctButtonAnimation(){
        switch currentLetter {
        case "a", "A":
            correctButtonTapped(imageOne: "puzzle-A-short-row0-col0", imageTwo: "puzzle-A-short-row0-col1", imageThree: "puzzle-A-short-row0-col2", imageFour: "puzzle-A-short-row1-col0", imageFive: "puzzle-A-short-row1-col1", imageSix: "puzzle-A-short-row1-col2", imageSeven: "puzzle-A-short-row2-col0", imageEight: "puzzle-A-short-row2-col1", imageNine: "puzzle-A-short-row2-col2", imageTen: "puzzle-A-short-row3-col0", imageEleven: "puzzle-A-short-row3-col1", imageTwelve: "puzzle-A-short-row3-col2")
        case "a ","A ":
            correctButtonTapped(imageOne: "puzzle-A-ahh-row0-col0", imageTwo: "puzzle-A-ahh-row0-col1", imageThree: "puzzle-A-ahh-row0-col2", imageFour: "puzzle-A-ahh-row1-col0", imageFive: "puzzle-A-ahh-row1-col1", imageSix: "puzzle-A-ahh-row1-col2", imageSeven: "puzzle-A-ahh-row2-col0", imageEight: "puzzle-A-ahh-row2-col1", imageNine: "puzzle-A-ahh-row2-col2", imageTen: "puzzle-A-ahh-row3-col0", imageEleven: "puzzle-A-ahh-row3-col1", imageTwelve: "puzzle-A-ahh-row3-col2")
        case "e","E":
            correctButtonTapped(imageOne: "puzzle-E-short-row0-col0", imageTwo: "puzzle-E-short-row0-col1", imageThree: "puzzle-E-short-row0-col2", imageFour: "puzzle-E-short-row1-col0", imageFive: "puzzle-E-short-row1-col1", imageSix: "puzzle-E-short-row1-col2", imageSeven: "puzzle-E-short-row2-col0", imageEight: "puzzle-E-short-row2-col1", imageNine: "puzzle-E-short-row2-col2", imageTen: "puzzle-E-short-row3-col0", imageEleven: "puzzle-E-short-row3-col1", imageTwelve: "puzzle-E-short-row3-col2")
        case "i","I":
            correctButtonTapped(imageOne: "puzzle-I-short-row0-col0", imageTwo: "puzzle-I-short-row0-col1", imageThree: "puzzle-I-short-row0-col2", imageFour: "puzzle-I-short-row1-col0", imageFive: "puzzle-I-short-row1-col1", imageSix: "puzzle-I-short-row1-col2", imageSeven: "puzzle-I-short-row2-col0", imageEight: "puzzle-I-short-row2-col1", imageNine: "puzzle-I-short-row2-col2", imageTen: "puzzle-I-short-row3-col0", imageEleven: "puzzle-I-short-row3-col1", imageTwelve: "puzzle-I-short-row3-col2")
        case "i ","I ":
            correctButtonTapped(imageOne: "puzzle-I-ee-row0-col1", imageTwo: "puzzle-I-ee-row0-col1", imageThree: "puzzle-I-ee-row0-col2", imageFour: "puzzle-I-ee-row1-col0", imageFive: "puzzle-I-ee-row1-col1", imageSix: "puzzle-I-ee-row1-col2", imageSeven: "puzzle-I-ee-row2-col0", imageEight: "puzzle-I-ee-row2-col1", imageNine: "puzzle-I-ee-row2-col2", imageTen: "puzzle-I-ee-row3-col0", imageEleven: "puzzle-I-ee-row3-col1", imageTwelve: "puzzle-I-ee-row3-col2")
        case "o","O":
            correctButtonTapped(imageOne: "puzzle-O-short-row0-col0", imageTwo: "puzzle-O-short-row0-col1", imageThree: "puzzle-O-short-row0-col2", imageFour: "puzzle-O-short-row1-col0", imageFive: "puzzle-O-short-row1-col1", imageSix: "puzzle-O-short-row1-col2", imageSeven: "puzzle-O-short-row2-col0", imageEight: "puzzle-O-short-row2-col1", imageNine: "puzzle-O-short-row2-col2", imageTen: "puzzle-O-short-row3-col0", imageEleven: "puzzle-O-short-row3-col1", imageTwelve: "puzzle-O-short-row3-col2")
        case "u","U":
            correctButtonTapped(imageOne: "puzzle-U-short-row0-col0", imageTwo: "puzzle-U-short-row0-col1", imageThree: "puzzle-U-short-row0-col2", imageFour: "puzzle-U-short-row1-col0", imageFive: "puzzle-U-short-row1-col1", imageSix: "puzzle-U-short-row1-col2", imageSeven: "puzzle-U-short-row2-col0", imageEight: "puzzle-U-short-row2-col1", imageNine: "puzzle-U-short-row2-col2", imageTen: "puzzle-U-short-row3-col0", imageEleven: "puzzle-U-short-row3-col1", imageTwelve: "puzzle-U-short-row3-col2")
        default:
            break
        }
    }
    
    
    func correctButtonTapped(imageOne: String, imageTwo: String, imageThree: String, imageFour: String, imageFive: String, imageSix: String, imageSeven: String, imageEight: String, imageNine: String, imageTen: String, imageEleven: String, imageTwelve: String) {
        
        var saveFile = UserDefaults.standard.dictionary(forKey: "VowelPuzzleProgress")
        
        var progress:Int = saveFile![currentLetter] as! Int
        
        
        
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
            puzzleFour.setImage(UIImage(named: imageFour), for: .normal)
            self.animate(mybutton: puzzleFour)
        }
        if progress == 12 {
            puzzleOne.setImage(UIImage(named: imageOne), for: .normal)
            self.animate(mybutton: puzzleOne)
            puzzleOne.addTarget(self, action: #selector(self.puzzleTapped), for: .touchUpInside)
            let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
            vc.passedInLetter = currentLetter
            vc.letterCategory = "end"
            present(vc, animated: true)
        }
        progress += 1
        playCorrectAudio()
        
        saveFile![currentLetter] = progress
        
        UserDefaults.standard.set(saveFile, forKey: "VowelPuzzleProgress")
    }
    
    func completePuzzle(imageOne: String, imageTwo: String, imageThree: String, imageFour: String, imageFive: String, imageSix: String, imageSeven: String, imageEight: String, imageNine: String, imageTen: String, imageEleven: String, imageTwelve: String) {
        
        let saveFile = UserDefaults.standard.dictionary(forKey: "VowelPuzzleProgress")
        
        let progress:Int = saveFile![currentLetter] as! Int
        
        UserDefaults.standard.set(saveFile, forKey: "VowelPuzzleProgress")
        
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
            puzzleFour.setImage(UIImage(named: imageFour), for: .normal)
        }
        if progress > 12 {
            puzzleOne.setImage(UIImage(named: imageOne), for: .normal)
            puzzleOne.addTarget(self, action: #selector(self.puzzleTapped), for: .touchUpInside)
        }

            
    }
    
    
    @objc func puzzleTapped(sender: UIButton) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
        vc.passedInLetter = currentLetter
        vc.letterCategory = "vowel"
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
        
        case "a","A":
            playAudio(audioName: "phoneme-A-short")
        case "a ","A ":
            playAudio(audioName: "phoneme-A-ahh")
        case "e","E":
            playAudio(audioName: "phoneme-E-short")
        case "i","I":
            playAudio(audioName: "phoneme-I-ee")
        case "i ","I ":
            playAudio(audioName: "phoneme-I-short")
        case "o","O":
            playAudio(audioName: "phoneme-O-short")
        case "u","U":
            playAudio(audioName: "phoneme-U-short")
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
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playFullAudio(currentLetter: currentLetter, firstChoice: choice1.currentTitle!, secondChoice: choice2.currentTitle!, thirdChoice: choice3.currentTitle!)
    }
    
    @IBAction func rhymeButtonTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
        vc.passedInLetter = currentLetter
        present(vc, animated: true)
    }
    
    
    

}

