//
//  alphabetQuiz.swift
//  Kindergarten Literacy
//
//  Created by TigerSHe on 2021/3/1.
//

import UIKit
import AVFoundation

class alphabetQuiz: UIViewController {
   
    //content arrays
    //numbered as 0, 1, 2, 3 in order
    var bmrasArray = ["b", "m", "r", "a", "s", "t", "g", "n", "i", "p", "c", "h", "f", "o", "d", "l", "k", "u", "j", "w", "e", "y", "z", "v", "q", "x"]
    var bmrasCapArray = ["B", "M", "R", "A", "S", "T", "G", "N", "I", "P", "C", "H", "F", "O", "D", "L", "K", "U", "J", "W", "E", "Y", "Z", "V", "Q", "X"]
    var abcdeArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var abcdeCapArray = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArrayID: Int!
    
    // choice buttons variables outlet
    @IBOutlet var choice1: UIButton!;
    @IBOutlet var choice2: UIButton!;
    @IBOutlet var choice3: UIButton!;
    @IBOutlet var choice4: UIButton!;
    
    // audio player
    var audioPlayer: AVAudioPlayer?
    
    // other globals
    var currentArray: Array<String>!
    var currentLetter: String!
    
    // reference to different storyboards
    let letterStoryBoard:UIStoryboard = UIStoryboard(name: "LetterPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    // init setup
    override func viewDidLoad() {
        super.viewDidLoad()
        // set up current Array + letter
        switch passedInArrayID {
        case 0:
            currentArray = bmrasArray
        case 1:
            currentArray = bmrasCapArray
        case 2:
            currentArray = abcdeArray
        case 3:
            currentArray = abcdeCapArray
        default:
            currentArray = bmrasArray
        }
        currentLetter = passedInLetter
        // play sound
        playLetterAudio(letter: currentLetter)
        // set up choices
        setupChoices()
        // Do any additional setup after loading the view.
    }
    
    // function to determine correct choice (also plays animation and sets up next question)
    @IBAction func quizChoice(_ sender: Any) {
        let choiceLetter = (sender as! UIButton).titleLabel!.text!
        // get correct savefile
        var saveFile = UserDefaults.standard.dictionary(forKey: "letterStarCount")
        if currentArray == bmrasArray || currentArray == abcdeArray {
            saveFile = UserDefaults.standard.dictionary(forKey: "letterStarCount")
        } else {
            saveFile = UserDefaults.standard.dictionary(forKey: "letterStarCountCap")
        }
        
        if choiceLetter == currentLetter {
            // add score to current letter's savefile when correct button is tapped
            var currScore:Int = saveFile![currentLetter] as! Int
            if currScore < 5 {
                currScore += 1
                saveFile![currentLetter] = currScore
                if currentArray == bmrasArray || currentArray == abcdeArray {
                    UserDefaults.standard.set(saveFile, forKey: "letterStarCount")
                } else {
                    UserDefaults.standard.set(saveFile, forKey: "letterStarCountCap")
                }
            }
            // add 1 to coin count
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "coinCount") + 1, forKey: "coinCount")
            
            // sound fx
            playCorrect()
            // disable button to avoid tapping during animation
            (sender as! UIButton).isEnabled = false
            
            // ANIMATION BLOCK //
            // backup center points
            let c1 = self.choice1.center
            let c2 = self.choice2.center
            let c3 = self.choice3.center
            let c4 = self.choice4.center
            // play animation
            UIView.animate(withDuration: 1, animations: {
                // center correct choice
                (sender as! UIButton).center = self.view.center
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
                if self.choice4 != (sender as! UIButton) {
                    self.choice4.alpha = 0.0
                }
            }, completion: { done in // excutes only after animation complete
                if done {
                    // sleep 1 second to keep answer on screen longer
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute : {
                        // hide letter to avoid pop in
                        (sender as! UIButton).alpha = 0.0
                        // assign new choices and layout
                        self.currentLetter = self.currentArray.randomElement()
                        self.setupChoices()
                        self.playLetterAudio(letter: self.currentLetter)
                        // reset positions
                        self.choice1.center = c1
                        self.choice2.center = c2
                        self.choice3.center = c3
                        self.choice4.center = c4
                        UIView.animate(withDuration: 0.5, animations: {
                            // show hidden letter with grace (if no use animation will pop)
                            self.choice1.alpha = 1.0
                            self.choice2.alpha = 1.0
                            self.choice3.alpha = 1.0
                            self.choice4.alpha = 1.0
                        })
                        // re enable button
                        (sender as! UIButton).isEnabled = true
                    })
                }
            })
            // END ANIMATION BLOCK //
        } else {
            // decrese score for current letter if a wrong choice is tapped
            var currScore:Int = saveFile![currentLetter] as! Int
            if currScore > 0 {
                currScore -= 1
                saveFile![currentLetter] = currScore
                if currentArray == bmrasArray || currentArray == abcdeArray {
                    UserDefaults.standard.set(saveFile, forKey: "letterStarCount")
                } else {
                    UserDefaults.standard.set(saveFile, forKey: "letterStarCountCap")
                }
            }
        }
    }
    
    // setup random choices
    func setupChoices() {
        let whichIsCorrect = Int.random(in: 0..<4)
        switch whichIsCorrect {
        case 0:
            choice1.setTitle(currentLetter, for: .normal)
            choice2.setTitle(currentArray.randomElement(), for: .normal)
            choice3.setTitle(currentArray.randomElement(), for: .normal)
            choice4.setTitle(currentArray.randomElement(), for: .normal)
        case 1:
            choice1.setTitle(currentArray.randomElement(), for: .normal)
            choice2.setTitle(currentLetter, for: .normal)
            choice3.setTitle(currentArray.randomElement(), for: .normal)
            choice4.setTitle(currentArray.randomElement(), for: .normal)
        case 2:
            choice1.setTitle(currentArray.randomElement(), for: .normal)
            choice2.setTitle(currentArray.randomElement(), for: .normal)
            choice3.setTitle(currentLetter, for: .normal)
            choice4.setTitle(currentArray.randomElement(), for: .normal)
        case 3:
            choice1.setTitle(currentArray.randomElement(), for: .normal)
            choice2.setTitle(currentArray.randomElement(), for: .normal)
            choice3.setTitle(currentArray.randomElement(), for: .normal)
            choice4.setTitle(currentLetter, for: .normal)
        default:
            break
        }
    }
    
    // functions for sidebar
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playLetterAudio(letter: currentLetter)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        present(vc, animated: true)
    }
    
    // play correct selection audio
    func playCorrect() {
        let pathToSound = Bundle.main.path(forResource: "alphabetQuiz_correct", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
        
    //play correspond letter audio
    func playLetterAudio(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_A", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_B", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_C", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_D", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "e","E":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_E", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_F", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_G", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_H", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i","I":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_I", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_J", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_K", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_L", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_M", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_N", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "o","O":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_O", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_P", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_Q", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_R", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_S", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_T", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "u","U":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_U", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_V", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_W", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_X", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_Y", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "alphabetSound_Z", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
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
