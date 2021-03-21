//
//  LearnEndingSounds.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 2/28/21.
//

import UIKit
import AVFoundation

class LearnEndingSounds: UIViewController {
    
    //content arrays
    //numbered as 0, 1, 2, 3 in order
    var bcdfArray = ["b", "d", "f", "g", "k", "l", "m", "n", "p", "r", "s", "t", "v", "w", "x", "z"]
    var bmrsArray = ["b", "m", "r", "s", "t", "g", "n", "p", "c", "f", "d", "l", "k", "w", "z", "v", "x"]
    var bcdfCapArray = ["B", "C", "D", "F", "G", "K", "L", "M", "N", "P", "R", "S", "T", "V", "W", "X", "Z"]
    var bmrsCapArray = ["B", "M", "R", "S", "T", "G", "N", "P", "C", "F", "D", "L", "K", "W", "Z", "V", "X"]
    
    //passed in argument from level select page
    var passedInLetter: String!
    var passedInArrayID: Int!
    
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
        switch passedInArrayID {
        case 0:
            currentArray = bcdfArray
        case 1:
            currentArray = bmrsArray
        case 2:
            currentArray = bcdfCapArray
        case 3:
            currentArray = bmrsCapArray
        default:
            currentArray = bcdfArray
        }
        playFullLetterAudio(letter: passedInLetter)
        showPicturesAndWords(letter: passedInLetter)
        
        // Do any additional setup after loading the view.
    }
    
    //buttons for changing display letter
    @IBAction func nextLetter(_ sender: Any) {
        let curr: String = letterButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index < currentArray.count - 1 {
            letterButton.setTitle(currentArray[index + 1], for: .normal)
        }
        playFullLetterAudio(letter: letterButton.currentTitle!)
        showPicturesAndWords(letter: letterButton.currentTitle!)
    }
    
    @IBAction func prevLetter(_ sender: Any) {
        let curr: String = letterButton.currentTitle!
        let index = currentArray.firstIndex(of: curr)!;
        if index > 0 {
            letterButton.setTitle(currentArray[index - 1], for: .normal)
        }
        playFullLetterAudio(letter: letterButton.currentTitle!)
        showPicturesAndWords(letter: letterButton.currentTitle!)
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
    
    func showPicturesAndWords(letter: String) {
        switch letter {
        case "b","B":
            showPicturesForLetter(firstPic: "cub", secondPic: "crab", thirdPic: "cobweb")
            showWordsForLetter(first: "cub", second: "crab", third: "cobweb")
        case "d","D":
            showPicturesForLetter(firstPic: "bird", secondPic: "cold", thirdPic: "friend")
            showWordsForLetter(first: "bird", second: "cold", third: "friend")
        case "f","F":
            showPicturesForLetter(firstPic: "scarf", secondPic: "thief", thirdPic: "chef")
            showWordsForLetter(first: "scarf", second: "thief", third: "chef")
        case "g","G":
            showPicturesForLetter(firstPic: "frog", secondPic: "plug", thirdPic: "bug")
            showWordsForLetter(first: "frog", second: "plug", third: "bug")
        case "k","K":
            showPicturesForLetter(firstPic: "elk", secondPic: "pick", thirdPic: "shark")
            showWordsForLetter(first: "elk", second: "pick", third: "shark")
        case "l","L":
            showPicturesForLetter(firstPic: "owl", secondPic: "goal", thirdPic: "sail")
            showWordsForLetter(first: "owl", second: "goal", third: "sail")
        case "m","M":
            showPicturesForLetter(firstPic: "swim", secondPic: "clam", thirdPic: "storm")
            showWordsForLetter(first: "swim", second: "clam", third: "storm")
        case "n","N":
            showPicturesForLetter(firstPic: "rain", secondPic: "van", thirdPic: "fin")
            showWordsForLetter(first: "rain", second: "van", third: "fin")
        case "p","P":
            showPicturesForLetter(firstPic: "drop", secondPic: "soap", thirdPic: "jeep")
            showWordsForLetter(first: "drop", second: "soap", third: "jeep")
        case "r","R":
            showPicturesForLetter(firstPic: "door", secondPic: "tiger", thirdPic: "polar-bear")
            showWordsForLetter(first: "door", second: "tiger", third: "polar-bear")
        case "s","S":
            showPicturesForLetter(firstPic: "bus", secondPic: "dress", thirdPic: "grapes")
            showWordsForLetter(first: "bus", second: "dress", third: "grapes")
        case "t","T":
            showPicturesForLetter(firstPic: "net", secondPic: "paint", thirdPic: "tent")
            showWordsForLetter(first: "net", second: "paint", third: "tent")
        case "x","X":
            showPicturesForLetter(firstPic: "fox", secondPic: "ax", thirdPic: "six")
            showWordsForLetter(first: "fox", second: "ax", third: "six")
        case "z","Z":
            showPicturesForLetter(firstPic: "quiz1", secondPic: "prize", thirdPic: "freeze")
            showWordsForLetter(first: "quiz1", second: "prize", third: "freeze")
        default:
        break
        }
    }
    
    func showPicturesForLetter(firstPic: String, secondPic: String, thirdPic: String) {
        firstWordPic.setBackgroundImage(UIImage(named: firstPic), for: .normal)
        secondWordPic.setBackgroundImage(UIImage(named: secondPic), for: .normal)
        thirdWordPic.setBackgroundImage(UIImage(named: thirdPic), for: .normal)
    }
    
    func showWordsForLetter(first: String, second: String, third: String) {
        let firstTitle = NSAttributedString(string: first)
        
        firstWord.setTitle(first, for: .normal)
        secondWord.setTitle(second, for: .normal)
        thirdWord.setTitle(third, for: .normal)
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
    
    @IBAction func quizButtonTapped(_ sender: Any) {
        let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "ending_sounds_quiz_vc")
        present(vc, animated: true)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        playFullLetterAudio(letter: letterButton.currentTitle!)
    }
    

}
