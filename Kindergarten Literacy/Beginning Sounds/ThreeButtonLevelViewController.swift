//
//  ThreeButtonLevelViewController.swift
//  Kindergarten Literacy
//
//  Created by Richard Jin on 2021/2/2.
//

import Foundation
import UIKit
import AVFoundation

class ThreeButtonLevelViewController: UIViewController {
    
    var array = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    
    var desiredLabelThree: String!
    
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet  var myButtonThree: UIButton!;
    
    @IBOutlet weak var wordButton2: UIButton!
    @IBOutlet weak var wordButton1: UIButton!;
    @IBOutlet weak var wordButton3: UIButton!
    
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButtonThree.setTitle(desiredLabelThree, for: .normal)
        transitionAudioandImage(letter: desiredLabelThree)
    }

    func showText(txt: String) {
        myButtonThree.setTitle(txt, for: .normal)
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myButtonThree.currentTitle!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
        transitionAudioandImage(letter: myButtonThree.currentTitle!)
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myButtonThree.currentTitle!)!;
        if i < 20 {
                showText(txt: array[i + 1])
        }
        transitionAudioandImage(letter: myButtonThree.currentTitle!)
    }
    
    @IBAction func playLetter(_ sender: Any) {
        playBeginningSoundsAudio(letter: myButtonThree.currentTitle!)
    }
    @IBAction func playFirst(_ sender: Any) {
        playBeginningSoundsFirstWord(letter: myButtonThree.currentTitle!)
    }
    @IBAction func playSecond(_ sender: Any) {
        playBeginningSoundsSecondWord(letter: myButtonThree.currentTitle!)
    }
    @IBAction func playThird(_ sender: Any) {
        playBeginningSoundsThirdWord(letter: myButtonThree.currentTitle!)
    }
    
    
    
    func transitionAudioandImage(letter: String) {
        switch letter {
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "b_buh_boy_bubble_boat", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "boy-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "bubble-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "boat-b"), for: .normal)
            word1.text = "BOY"
            word2.text = "BUBBLE"
            word3.text = "BOAT"
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "c_cuh_cat_canary_cake", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "cat-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "canary-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "cake-b"), for: .normal)
            word1.text = "CAT"
            word2.text = "CANARY"
            word3.text = "CAKE"
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "d_duh_dog_drum_door", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "dog-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "drum-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "door-b"), for: .normal)
            word1.text = "DOG"
            word2.text = "DRUM"
            word3.text = "DOOR"
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "f_fuh_fox_fish_foot", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "fish-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "fox-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "foot-b"), for: .normal)
            word1.text = "FISH"
            word2.text = "FOX"
            word3.text = "FOOT"
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "g_guh_goose_goat_gold", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "goose-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "goat-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "gold-b"), for: .normal)
            word1.text = "GOOSE"
            word2.text = "GOAT"
            word3.text = "GOLD"
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "h_huh_hug_hardhat_hide", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "hug-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "hardhat-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "hide-b"), for: .normal)
            word1.text = "HUG"
            word2.text = "HARDHAT"
            word3.text = "HIDE"
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "j_juh_jump_jay_jeep", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "jump-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "joy-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "jeep-b"), for: .normal)
            word1.text = "JUMP"
            word2.text = "JOY"
            word3.text = "JEEP"
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "k_kuh_key_kayak_kangaroo", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "key-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "kayak-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "kangaroo-b"), for: .normal)
            word1.text = "KEY"
            word2.text = "KAYAK"
            word3.text = "KANGAROO"
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "l_luh_love_leaf_lion", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "love-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "leaf-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "lion-b"), for: .normal)
            word1.text = "LOVE"
            word2.text = "LEAF"
            word3.text = "LION"
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "m_mmm_monkey_mole_mermaid", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "monkey-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "mole-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "mermaid-b"), for: .normal)
            word1.text = "MONKEY"
            word2.text = "MOLE"
            word3.text = "MERMAID"
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "n_nnn_nose_nail_nest", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "noise-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "nail-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "nest-b"), for: .normal)
            word1.text = "NOISE"
            word2.text = "NAIL"
            word3.text = "NEST"
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "p_puh_puppy_penguin_pie", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "puppy-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "penguin-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "pie-b"), for: .normal)
            word1.text = "PUPPY"
            word2.text = "PENGUIN"
            word3.text = "PIE"
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "q_quh_queen_question_quick", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "queen-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "question-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "quick-b"), for: .normal)
            word1.text = "QUEEN"
            word2.text = "QUESTION"
            word3.text = "QUICK"
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "r_ruh_raccoon_robot_run", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "raccoons-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "robot-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "run-b"), for: .normal)
            word1.text = "RACCOONS"
            word2.text = "ROBOT"
            word3.text = "RUN"
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "s_sss_suitcase_say_sneak", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "suitcase-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "say-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "sneak-b"), for: .normal)
            word1.text = "SUITCASE"
            word2.text = "SAY"
            word3.text = "SNEAK"
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "t_tuh_toe_toys_tail", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "toe-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "toys-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "tail-b"), for: .normal)
            word1.text = "TOE"
            word2.text = "TOYS"
            word3.text = "TAIL"
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "v_vuh_volcano_van_voice", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "volcano-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "van-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "voice-b"), for: .normal)
            word1.text = "VOLCANO"
            word2.text = "VAN"
            word3.text = "VOICE"
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "w_wuh_wagon_wolf_wind", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "wagon-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "wolf-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "wind-b"), for: .normal)
            word1.text = "WAGON"
            word2.text = "WOLF"
            word3.text = "WIND"
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "x_kss_excavator_axe_exam", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "excavator-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "ax-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "exam-b"), for: .normal)
            word1.text = "EXCAVATOR"
            word2.text = "AX"
            word3.text = "EXAM"
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "y_yuh_yellow_yoyo_yawn", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "yellow-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "yoyo-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "yawn-b"), for: .normal)
            word1.text = "YELLOW"
            word2.text = "YOYO"
            word3.text = "YAWN"
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "z_zzz_zebra_zoo_zipper", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
            wordButton1.setImage(UIImage(named: "zebra-b"), for: .normal)
            wordButton2.setImage(UIImage(named: "zipper-b"), for: .normal)
            wordButton3.setImage(UIImage(named: "zoo-b"), for: .normal)
            word1.text = "ZEBRA"
            word2.text = "ZIPPER"
            word3.text = "ZOO"
        default:
            break
        }
    }
    
    func playBeginningSoundsAudio(letter: String) {
        switch letter {
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
    
    func playBeginningSoundsFirstWord(letter: String) {
        switch letter {
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "boy-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "cat-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "dog-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "fish-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "goose-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "hug-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "jump-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "key-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "love-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "monkey-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "noise-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "puppy-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "queen-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "raccoons-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "suitcase-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "toe-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "volcano-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "wagon-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "excavator-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "yellow-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "zebra-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    func playBeginningSoundsSecondWord(letter: String) {
        switch letter {
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "bubble-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "canary-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "drum-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "fox-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "goat-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "hardhat-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "joy-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "kayak-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "leaf-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "mole-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "nail-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "penguin-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "question-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "robot-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "say-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "toys-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "van-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "wolf-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "ax-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "yoyo-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "zipper-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    func playBeginningSoundsThirdWord(letter: String) {
        switch letter {
        case "b","B":
            let pathToSound = Bundle.main.path(forResource: "boat-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "c","C":
            let pathToSound = Bundle.main.path(forResource: "cake-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "d","D":
            let pathToSound = Bundle.main.path(forResource: "door-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "f","F":
            let pathToSound = Bundle.main.path(forResource: "foot-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "g","G":
            let pathToSound = Bundle.main.path(forResource: "gold-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "h","H":
            let pathToSound = Bundle.main.path(forResource: "hide-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "j","J":
            let pathToSound = Bundle.main.path(forResource: "jeep-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "k","K":
            let pathToSound = Bundle.main.path(forResource: "kangaroo-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "l","L":
            let pathToSound = Bundle.main.path(forResource: "lion-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "m","M":
            let pathToSound = Bundle.main.path(forResource: "mermaid-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "n","N":
            let pathToSound = Bundle.main.path(forResource: "nest-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "p","P":
            let pathToSound = Bundle.main.path(forResource: "pie-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "q","Q":
            let pathToSound = Bundle.main.path(forResource: "quick-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "r","R":
            let pathToSound = Bundle.main.path(forResource: "run-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "s","S":
            let pathToSound = Bundle.main.path(forResource: "sneak-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "t","T":
            let pathToSound = Bundle.main.path(forResource: "tail-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "v","V":
            let pathToSound = Bundle.main.path(forResource: "voice-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "w","W":
            let pathToSound = Bundle.main.path(forResource: "wind-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "x","X":
            let pathToSound = Bundle.main.path(forResource: "exam-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "y","Y":
            let pathToSound = Bundle.main.path(forResource: "yawn-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "z","Z":
            let pathToSound = Bundle.main.path(forResource: "zoo-b", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "beginning_sounds_quiz_vc") as! BeginningSoundsQuizViewController
        vc.desiredLabelOne = myButtonThree.currentTitle
        audioPlayer!.stop()
        present(vc, animated: true)
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
