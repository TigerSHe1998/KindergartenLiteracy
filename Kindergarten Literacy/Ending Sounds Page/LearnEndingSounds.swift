//
//  LearnEndingSounds.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/28/21.
//

import UIKit
import AVFoundation
import SwiftUI

class LearnEndingSounds: UIViewController {
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArray: [String]!
    
    //global variables
    var currentArray: Array<String>!
    @IBOutlet var letterButton: UIButton!
    @IBOutlet var firstWordPic: UIButton!
    @IBOutlet var firstWord: UIButton!
    @IBOutlet var secondWordPic: UIButton!
    @IBOutlet var secondWord: UIButton!
    @IBOutlet var thirdWordPic: UIButton!
    @IBOutlet var thirdWord: UIButton!
    
    //audio player from imported library
    var audioPlayer: AVAudioPlayer?
    
    // reference to different storyboards
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    //startup logic, assign content arrays + display text + play first audio
    override func viewDidLoad() {
        super.viewDidLoad()
        letterButton.setTitle(passedInLetter, for: .normal)

        currentArray = passedInArray
        playFullLetterAudio(letter: passedInLetter)
        showPictures(letter: passedInLetter)
        showWords(letter: passedInLetter)
    }
    
    //buttons for changing display letter
    @IBAction func nextLetter(_ sender: Any) {
        let curr: String = letterButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index < currentArray.count - 1 {
            letterButton.setTitle(currentArray[index + 1], for: .normal)
        }
        playFullLetterAudio(letter: letterButton.currentTitle!)
        showPictures(letter: letterButton.currentTitle!)
        showWords(letter: letterButton.currentTitle!)
    }
    
    @IBAction func prevLetter(_ sender: Any) {
        let curr: String = letterButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index > 0 {
            letterButton.setTitle(currentArray[index - 1], for: .normal)
        }
        playFullLetterAudio(letter: letterButton.currentTitle!)
        showPictures(letter: letterButton.currentTitle!)
        showWords(letter: letterButton.currentTitle!)
    }
    
    //play audio for each letter
    @IBAction func tapLetter(_ sender: Any) {
        playIndividualLetterAudio(letter: letterButton.currentTitle!)
    }
    
    //play audio for each pic
    @IBAction func tapFirstPic(_ sender: Any) {
        playFirstPicAudio(letter: letterButton.currentTitle!)
    }
    @IBAction func tapSecondPic(_ sender: Any) {
        playSecondPicAudio(letter: letterButton.currentTitle!)
    }
    @IBAction func tapThirdPic(_ sender: Any) {
        playThirdPicAudio(letter: letterButton.currentTitle!)
    }
    
    func showPictures(letter: String) {
        switch letter {
        case "b","B":
            showPicturesForLetter(firstPic: "cub-e", secondPic: "crab-e", thirdPic: "cobweb-e")
        case "d","D":
            showPicturesForLetter(firstPic: "bird-e", secondPic: "cold-e", thirdPic: "friend-e")
        case "f","F":
            showPicturesForLetter(firstPic: "scarf-e", secondPic: "thief-e", thirdPic: "chef-e")
        case "g","G":
            showPicturesForLetter(firstPic: "frog-e", secondPic: "plug-e", thirdPic: "bug-e")
        case "k","K":
            showPicturesForLetter(firstPic: "elk-e", secondPic: "pick-e", thirdPic: "shark-e")
        case "l","L":
            showPicturesForLetter(firstPic: "owl-e", secondPic: "goal-e", thirdPic: "sail-e")
        case "m","M":
            showPicturesForLetter(firstPic: "swim-e", secondPic: "clam-e", thirdPic: "storm-e")
        case "n","N":
            showPicturesForLetter(firstPic: "rain-e", secondPic: "van-e", thirdPic: "fin-e")
        case "p","P":
            showPicturesForLetter(firstPic: "drop-e", secondPic: "soap-e", thirdPic: "jeep-e")
        case "r","R":
            showPicturesForLetter(firstPic: "door-e", secondPic: "tiger-e", thirdPic: "polar bear-e")
        case "s","S":
            showPicturesForLetter(firstPic: "bus-e", secondPic: "dress-e", thirdPic: "grapes-e")
        case "t","T":
            showPicturesForLetter(firstPic: "net-e", secondPic: "paint-e", thirdPic: "tent-e")
        case "x","X":
            showPicturesForLetter(firstPic: "fox-e", secondPic: "ax-e", thirdPic: "six-e")
        case "z","Z":
            showPicturesForLetter(firstPic: "quiz-e", secondPic: "prize-e", thirdPic: "freeze-e")
        default:
            break
        }
    }
    
    
    func showPicturesForLetter(firstPic: String, secondPic: String, thirdPic: String) {
        firstWordPic.setBackgroundImage(UIImage(named: firstPic), for: .normal)
        secondWordPic.setBackgroundImage(UIImage(named: secondPic), for: .normal)
        thirdWordPic.setBackgroundImage(UIImage(named: thirdPic), for: .normal)
    }
    
    func showWords(letter: String) {
        switch letter {
        case "b":
            showWordsForLetter(letter: "b", first: "cub", second: "crab", third: "cobweb")
        case "d":
            showWordsForLetter(letter: "d", first: "bird", second: "cold", third: "friend")
        case "f":
            showWordsForLetter(letter: "f", first: "scarf", second: "thief", third: "chef")
        case "g":
            showWordsForLetter(letter: "g", first: "frog", second: "plug", third: "bug")
        case "k":
            showWordsForLetter(letter: "k", first: "elk", second: "pick", third: "shark")
        case "l":
            showWordsForLetter(letter: "l", first: "owl", second: "goal", third: "sail")
        case "m":
            showWordsForLetter(letter: "m", first: "swim", second: "clam", third: "storm")
        case "n":
            showWordsForLetter(letter: "n", first: "rain", second: "van", third: "fin")
        case "p":
            showWordsForLetter(letter: "p", first: "drop", second: "soap", third: "jeep")
        case "r":
            showWordsForLetter(letter: "r", first: "door", second: "tiger", third: "polar bear")
        case "s":
            showWordsForLetter(letter: "s", first: "bus", second: "dress", third: "grapes")
        case "t":
            showWordsForLetter(letter: "t", first: "net", second: "paint", third: "tent")
        case "x":
            showWordsForLetter(letter: "x", first: "fox", second: "ax", third: "six")
        case "z":
            showWordsForLetter(letter: "z", first: "quiz", second: "prize", third: "freeze")
        case "B":
            showWordsForLetter(letter: "B", first: "CUB", second: "CRAB", third: "COBWEB")
        case "D":
            showWordsForLetter(letter: "D", first: "BIRD", second: "COLD", third: "FRIEND")
        case "F":
            showWordsForLetter(letter: "F", first: "SCARF", second: "THIEF", third: "CHEF")
        case "G":
            showWordsForLetter(letter: "G", first: "FROG", second: "PLUG", third: "BUG")
        case "K":
            showWordsForLetter(letter: "K", first: "ELK", second: "PICK", third: "SHARK")
        case "L":
            showWordsForLetter(letter: "L", first: "OWL", second: "GOAL", third: "SAIL")
        case "M":
            showWordsForLetter(letter: "M", first: "SWIM", second: "CLAM", third: "STORM")
        case "N":
            showWordsForLetter(letter: "N", first: "RAIN", second: "VAN", third: "FIN")
        case "P":
            showWordsForLetter(letter: "P", first: "DROP", second: "SOAP", third: "JEEP")
        case "R":
            showWordsForLetter(letter: "R", first: "DOOR", second: "TIGER", third: "POLAR BEAR")
        case "S":
            showWordsForLetter(letter: "S", first: "BUS", second: "DRESS", third: "GRAPES")
        case "T":
            showWordsForLetter(letter: "T", first: "NET", second: "PAINT", third: "TENT")
        case "X":
            showWordsForLetter(letter: "X", first: "FOX", second: "AX", third: "SIX")
        case "Z":
            showWordsForLetter(letter: "Z", first: "QUIZ", second: "PRIZE", third: "FREEZE")
        default:
            break
        }
    }
    
    func showWordsForLetter(letter: String, first: String, second: String, third: String) {
        let letterToRed = letter
        let range1 = (first as NSString).range(of: letterToRed)
        let mutableFirst = NSMutableAttributedString(string: first)
        mutableFirst.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range1)
        firstWord.setAttributedTitle(mutableFirst, for: .normal)
        
        let range2 = (second as NSString).range(of: letterToRed)
        let mutableSecond = NSMutableAttributedString(string: second)
        mutableSecond.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range2)
        secondWord.setAttributedTitle(mutableSecond, for: .normal)
        
        let range3 = (third as NSString).range(of: letterToRed)
        let mutableThird = NSMutableAttributedString(string: third)
        mutableThird.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range3)
        thirdWord.setAttributedTitle(mutableThird, for: .normal)
    }
    
    
    //find correspond audio file and play audio
    //show the corresponding pictures
    func playFullLetterAudio(letter: String) {
        switch letter {
        case "b","B":
            playAudio(audioName: "buh_cub_crab_cobweb")
        case "d","D":
            playAudio(audioName: "duh_bird_cold_friend")
        case "f","F":
            playAudio(audioName: "fuh_scarf_thief_chef")
        case "g","G":
            playAudio(audioName: "guh_frog_plug_bug")
        case "k","K":
            playAudio(audioName: "kuh_elk_pick_shark")
        case "l","L":
            playAudio(audioName: "ull_owl_goal_sail")
        case "m","M":
            playAudio(audioName: "mmm_swim_clam_storm")
        case "n","N":
            playAudio(audioName: "nnn_rain_van_fin")
        case "p","P":
            playAudio(audioName: "puh_drop_soap_jeep")
        case "r","R":
            playAudio(audioName: "err_door_tiger_polar-bear")
        case "s","S":
            playAudio(audioName: "sss_bus_dress_grapes")
        case "t","T":
            playAudio(audioName: "ttt_net_paint_tent")
        case "x","X":
            playAudio(audioName: "kss_fox_ax_six")
        case "z","Z":
            playAudio(audioName: "zzz_quiz_prize_freeze")
        default:
            break
        }
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
    
    func playFirstPicAudio(letter: String) {
        switch letter {
        case "b","B":
            playAudio(audioName: "cub")
        case "d","D":
            playAudio(audioName: "bird")
        case "f","F":
            playAudio(audioName: "scarf")
        case "g","G":
            playAudio(audioName: "frog")
        case "k","K":
            playAudio(audioName: "elk")
        case "l","L":
            playAudio(audioName: "owl")
        case "m","M":
            playAudio(audioName: "swim")
        case "n","N":
            playAudio(audioName: "rain")
        case "p","P":
            playAudio(audioName: "drop")
        case "r","R":
            playAudio(audioName: "door")
        case "s","S":
            playAudio(audioName: "bus")
        case "t","T":
            playAudio(audioName: "net")
        case "x","X":
            playAudio(audioName: "fox")
        case "z","Z":
            playAudio(audioName: "quiz")
        default:
            break
        }
    }
    
    func playSecondPicAudio(letter: String) {
        switch letter {
        case "b","B":
            playAudio(audioName: "crab")
        case "d","D":
            playAudio(audioName: "cold")
        case "f","F":
            playAudio(audioName: "thief")
        case "g","G":
            playAudio(audioName: "plug")
        case "k","K":
            playAudio(audioName: "pick")
        case "l","L":
            playAudio(audioName: "goal")
        case "m","M":
            playAudio(audioName: "clam")
        case "n","N":
            playAudio(audioName: "van")
        case "p","P":
            playAudio(audioName: "soap")
        case "r","R":
            playAudio(audioName: "tiger")
        case "s","S":
            playAudio(audioName: "dress")
        case "t","T":
            playAudio(audioName: "paint")
        case "x","X":
            playAudio(audioName: "ax")
        case "z","Z":
            playAudio(audioName: "prize")
        default:
            break
        }
    }
    
    func playThirdPicAudio(letter: String) {
        switch letter {
        case "b","B":
            playAudio(audioName: "cobweb")
        case "d","D":
            playAudio(audioName: "friend")
        case "f","F":
            playAudio(audioName: "chef")
        case "g","G":
            playAudio(audioName: "bug")
        case "k","K":
            playAudio(audioName: "shark")
        case "l","L":
            playAudio(audioName: "sail")
        case "m","M":
            playAudio(audioName: "storm")
        case "n","N":
            playAudio(audioName: "fin")
        case "p","P":
            playAudio(audioName: "jeep")
        case "r","R":
            playAudio(audioName: "polar-bear")
        case "s","S":
            playAudio(audioName: "grapes")
        case "t","T":
            playAudio(audioName: "tent")
        case "x","X":
            playAudio(audioName: "six")
        case "z","Z":
            playAudio(audioName: "freeze")
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
        //stopPlayingAudio()
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "puzzle_vc")
//        let vc = UIHostingController(rootView: PuzzleView())
        stopPlayingAudio()
        present(vc, animated: true)
    }
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = mainStoryBoard.instantiateViewController(identifier: "coin_vc")
        stopPlayingAudio()
        present(vc, animated: true)
    }
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds_quiz_vc") as! EndingSoundsQuiz
        vc.passedInLetter = letterButton.currentTitle!
        vc.passedInArray = passedInArray
        stopPlayingAudio()
        present(vc, animated: true)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playFullLetterAudio(letter: letterButton.currentTitle!)
    }
    
    // stop playing sound
    func stopPlayingAudio() {
        audioPlayer?.stop()
    }
}
