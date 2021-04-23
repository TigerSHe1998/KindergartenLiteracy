//
//  CoinViewController.swift
//  Kindergarten Literacy
//
//  Created by Haoyun Xu on 1/30/21.
//

import UIKit

class PuzzleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    class PuzzleButton:UIButton {
        var category:String!
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 130, y: (view.frame.size.height / 2) - 190, width: view.frame.size.width - 10, height: 380))
        scrollView.backgroundColor = .white

        view.addSubview(scrollView)
        //scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //NSLayoutConstraint(item: scrollView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = true
        
        let aFirstVowelButton = PuzzleButton(frame: CGRect(x: 0, y: 0, width: 140, height:175))
        configure(currentTitle: "a", currentButton: aFirstVowelButton, category: "vowel")
        scrollView.addSubview(aFirstVowelButton)
    
        let aSecondVowelButton = PuzzleButton(frame: CGRect(x: 0, y: 195, width: 140, height:175))
        configure(currentTitle: "a ", currentButton: aSecondVowelButton, category: "vowel")
        scrollView.addSubview(aSecondVowelButton)
        
        let bBeginButton = PuzzleButton(frame: CGRect(x: 160, y: 0, width: 140, height:175))
        configure(currentTitle: "b", currentButton: bBeginButton, category: "begin")
        scrollView.addSubview(bBeginButton)

        let bEndButton = PuzzleButton(frame: CGRect(x: 160, y: 195, width: 140, height:175))
        configure(currentTitle: "b", currentButton: bEndButton, category: "end")
        scrollView.addSubview(bEndButton)

        let cButton = PuzzleButton(frame: CGRect(x: 320, y: 0, width: 140, height:175))
        configure(currentTitle: "c", currentButton: cButton, category: "begin")
        scrollView.addSubview(cButton)

        let dBeginButton = PuzzleButton(frame: CGRect(x: 320, y: 195, width: 140, height:175))
        configure(currentTitle: "d", currentButton: dBeginButton, category: "begin")
        scrollView.addSubview(dBeginButton)

        let dEndButton = PuzzleButton(frame: CGRect(x: 480, y: 0, width: 140, height:175))
        configure(currentTitle: "d", currentButton: dEndButton, category: "end")
        scrollView.addSubview(dEndButton)

        let eButton = PuzzleButton(frame: CGRect(x: 480, y: 195, width: 140, height:175))
        configure(currentTitle: "e", currentButton: eButton, category: "vowel")
        scrollView.addSubview(eButton)

        let fBeginButton = PuzzleButton(frame: CGRect(x: 640, y: 0, width: 140, height:175))
        configure(currentTitle: "f", currentButton: fBeginButton, category: "begin")
        scrollView.addSubview(fBeginButton)

        let fEndButton = PuzzleButton(frame: CGRect(x: 640, y: 195, width: 140, height:175))
        configure(currentTitle: "f", currentButton: fEndButton, category: "end")
        scrollView.addSubview(fEndButton)

        let gBeginButton = PuzzleButton(frame: CGRect(x: 800, y: 0, width: 140, height:175))
        configure(currentTitle: "g", currentButton: gBeginButton, category: "begin")
        scrollView.addSubview(gBeginButton)

        let gEndButton = PuzzleButton(frame: CGRect(x: 800, y: 195, width: 140, height:175))
        configure(currentTitle: "g", currentButton: gEndButton, category: "end")
        scrollView.addSubview(gEndButton)

        let hButton = PuzzleButton(frame: CGRect(x: 960, y: 0, width: 140, height:175))
        configure(currentTitle: "h", currentButton: hButton, category: "begin")
        scrollView.addSubview(hButton)

        let iFirstVowelButton = PuzzleButton(frame: CGRect(x: 960, y: 195, width: 140, height:175))
        configure(currentTitle: "i", currentButton: iFirstVowelButton, category: "vowel")
        scrollView.addSubview(iFirstVowelButton)

        let iSecondVowelButton = PuzzleButton(frame: CGRect(x: 1120, y: 0, width: 140, height:175))
        configure(currentTitle: "i ", currentButton: iSecondVowelButton, category: "vowel")
        scrollView.addSubview(iSecondVowelButton)

        let jButton = PuzzleButton(frame: CGRect(x: 1120, y: 195, width: 140, height:175))
        configure(currentTitle: "j", currentButton: jButton, category: "begin")
        scrollView.addSubview(jButton)

        let kBeginButton = PuzzleButton(frame: CGRect(x: 1280, y: 0, width: 140, height:175))
        configure(currentTitle: "k", currentButton: kBeginButton, category: "begin")
        scrollView.addSubview(kBeginButton)

        let kEndButton = PuzzleButton(frame: CGRect(x: 1280, y: 195, width: 140, height:175))
        configure(currentTitle: "k", currentButton: kEndButton, category: "end")
        scrollView.addSubview(kEndButton)

        let lBeginButton = PuzzleButton(frame: CGRect(x: 1440, y: 0, width: 140, height:175))
        configure(currentTitle: "l", currentButton: lBeginButton, category: "begin")
        scrollView.addSubview(lBeginButton)

        let lEndButton = PuzzleButton(frame: CGRect(x: 1440, y: 195, width: 140, height:175))
        configure(currentTitle: "l", currentButton: lEndButton, category: "end")
        scrollView.addSubview(lEndButton)

        let mBeginButton = PuzzleButton(frame: CGRect(x: 1600, y: 0, width: 140, height:175))
        configure(currentTitle: "m", currentButton: mBeginButton, category: "begin")
        scrollView.addSubview(mBeginButton)

        let mEndButton = PuzzleButton(frame: CGRect(x: 1600, y: 195, width: 140, height:175))
        configure(currentTitle: "m", currentButton: mEndButton, category: "end")
        scrollView.addSubview(mEndButton)

        let nBeginButton = PuzzleButton(frame: CGRect(x: 1760, y: 0, width: 140, height:175))
        configure(currentTitle: "n", currentButton: nBeginButton, category: "begin")
        scrollView.addSubview(nBeginButton)

        let nEndButton = PuzzleButton(frame: CGRect(x: 1760, y: 195, width: 140, height:175))
        configure(currentTitle: "n", currentButton: nEndButton, category: "end")
        scrollView.addSubview(nEndButton)

        let oButton = PuzzleButton(frame: CGRect(x: 1920, y: 0, width: 140, height:175))
        configure(currentTitle: "o", currentButton: oButton, category: "vowel")
        scrollView.addSubview(oButton)

        let pBeginButton = PuzzleButton(frame: CGRect(x: 1920, y: 195, width: 140, height:175))
        configure(currentTitle: "p", currentButton: pBeginButton, category: "begin")
        scrollView.addSubview(pBeginButton)

        let pEndButton = PuzzleButton(frame: CGRect(x: 2080, y: 0, width: 140, height:175))
        configure(currentTitle: "p", currentButton: pEndButton, category: "end")
        scrollView.addSubview(pEndButton)

        let qButton = PuzzleButton(frame: CGRect(x: 2080, y: 195, width: 140, height:175))
        configure(currentTitle: "q", currentButton: qButton, category: "begin")
        scrollView.addSubview(qButton)

        let rBeginButton = PuzzleButton(frame: CGRect(x: 2240, y: 0, width: 140, height:175))
        configure(currentTitle: "r", currentButton: rBeginButton, category: "begin")
        scrollView.addSubview(rBeginButton)

        let rEndButton = PuzzleButton(frame: CGRect(x: 2240, y: 195, width: 140, height:175))
        configure(currentTitle: "r", currentButton: rEndButton, category: "end")
        scrollView.addSubview(rEndButton)

        let sBeginButton = PuzzleButton(frame: CGRect(x: 2400, y: 0, width: 140, height:175))
        configure(currentTitle: "s", currentButton: sBeginButton, category: "begin")
        scrollView.addSubview(sBeginButton)

        let sEndButton = PuzzleButton(frame: CGRect(x: 2400, y: 195, width: 140, height:175))
        configure(currentTitle: "s", currentButton: sEndButton, category: "end")
        scrollView.addSubview(sEndButton)

        let tBeginButton = PuzzleButton(frame: CGRect(x: 2560, y: 0, width: 140, height:175))
        configure(currentTitle: "t", currentButton: tBeginButton, category: "begin")
        scrollView.addSubview(tBeginButton)

        let tEndButton = PuzzleButton(frame: CGRect(x: 2560, y: 195, width: 140, height:175))
        configure(currentTitle: "t", currentButton: tEndButton, category: "end")
        scrollView.addSubview(tEndButton)

        let uButton = PuzzleButton(frame: CGRect(x: 2720, y: 0, width: 140, height:175))
        configure(currentTitle: "u", currentButton: uButton, category: "vowel")
        scrollView.addSubview(uButton)

        let vButton = PuzzleButton(frame: CGRect(x: 2720, y: 195, width: 140, height:175))
        configure(currentTitle: "v", currentButton: vButton, category: "begin")
        scrollView.addSubview(vButton)

        let wButton = PuzzleButton(frame: CGRect(x: 2880, y: 0, width: 140, height:175))
        configure(currentTitle: "w", currentButton: wButton, category: "begin")
        scrollView.addSubview(wButton)

        let xBeginButton = PuzzleButton(frame: CGRect(x: 2880, y: 195, width: 140, height:175))
        configure(currentTitle: "x", currentButton: xBeginButton, category: "begin")
        scrollView.addSubview(xBeginButton)

        let xEndButton = PuzzleButton(frame: CGRect(x: 3040, y: 0, width: 140, height:175))
        configure(currentTitle: "x", currentButton: xEndButton, category: "begin")
        scrollView.addSubview(xEndButton)

        let yButton = PuzzleButton(frame: CGRect(x: 3040, y: 195, width: 140, height:175))
        configure(currentTitle: "y", currentButton: yButton, category: "begin")
        scrollView.addSubview(yButton)

        let zBeginButton = PuzzleButton(frame: CGRect(x: 3200, y: 0, width: 140, height:175))
        configure(currentTitle: "z", currentButton: zBeginButton, category: "begin")
        scrollView.addSubview(zBeginButton)
        
        let zEndButton = PuzzleButton(frame: CGRect(x: 3200, y: 195, width: 140, height:175))
        configure(currentTitle: "z", currentButton: zEndButton, category: "end")
        scrollView.addSubview(zEndButton)
        
        scrollView.contentSize = CGSize(width: 3500, height: 380)
        
    }
    
    var vowelSaveFile = UserDefaults.standard.dictionary(forKey: "VowelPuzzleProgress")
    var beginningSoundsSaveFile = UserDefaults.standard.dictionary(forKey: "BeginningSoundsPuzzleProgress")
    var endingSoundsSaveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsPuzzleProgress")
    
    func configure(currentTitle: String, currentButton: PuzzleButton, category: String) {
        currentButton.setTitle(currentTitle, for: .normal)
        currentButton.backgroundColor = UIColor(named: "lightGreen")
        currentButton.setTitleColor(.black, for: .normal)
        currentButton.titleLabel?.font = UIFont(name: "Chalkboard SE", size: 50)
        currentButton.category = category
        currentButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        switch currentButton.category {
        case "vowel":
            if vowelSaveFile![currentButton.currentTitle!] as! Int >= 6 {
                setVowelCompositePuzzle(currentButton: currentButton)
            }
        //case "begin":
            //if beginningSoundsSaveFile![currentButton.currentTitle!] as! Int >= 12 {                //setBeginningSoundsCompositePuzzle(currentButton: currentButton)
            //}
        case "end":
            if endingSoundsSaveFile![currentButton.currentTitle!] as! Int >= 6 {
                setEndingSoundsCompositePuzzle(currentButton: currentButton)
            }
        default:
            break
        }
    }
    
    func setVowelCompositePuzzle(currentButton: PuzzleButton) {
        switch currentButton.currentTitle {
        case "a":
            currentButton.setImage(UIImage(named: "puzzle-A-ahh-composite-L"), for: .normal)
        case "a ":
            currentButton.setImage(UIImage(named: "puzzle-A-short-composite-L"), for: .normal)
        case "e":
            currentButton.setImage(UIImage(named: "puzzle-E-short-composite-L"), for: .normal)
        case "i":
            currentButton.setImage(UIImage(named: "puzzle-I-ee-composite-L"), for: .normal)
        case "i ":
            currentButton.setImage(UIImage(named: "puzzle-I-short-composite-L"), for: .normal)
        case "o":
            currentButton.setImage(UIImage(named: "puzzle-O-short-composite-L"), for: .normal)
        case "u":
            currentButton.setImage(UIImage(named: "puzzle-U-short-composite-L"), for: .normal)
        default:
            break
        }
    }
    
    func setBeginningSoundsCompositePuzzle(currentButton: PuzzleButton) {
        switch currentButton.currentTitle {
        case "b":
            currentButton.setImage(UIImage(named: "puzzle-B-buh-begin-composite-L"), for: .normal)
        case "c":
            currentButton.setImage(UIImage(named: "puzzle-C-kuh-begin-composite-L"), for: .normal)
        case "d":
            currentButton.setImage(UIImage(named: "puzzle-D-duh-begin-composite-L"), for: .normal)
        case "f":
            currentButton.setImage(UIImage(named: "puzzle-F-fuh-begin-composite-L"), for: .normal)
        case "g":
            currentButton.setImage(UIImage(named: "puzzle-G-guh-begin-composite-L"), for: .normal)
        case "h":
            currentButton.setImage(UIImage(named: "puzzle-H-huh-begin-composite-L"), for: .normal)
        case "j":
            currentButton.setImage(UIImage(named: "puzzle-J-juh-begin-composite-L"), for: .normal)
        case "k":
            currentButton.setImage(UIImage(named: "puzzle-K-kuh-begin-composite-L"), for: .normal)
        case "l":
            currentButton.setImage(UIImage(named: "puzzle-L-lll-begin-composite-L"), for: .normal)
        case "m":
            currentButton.setImage(UIImage(named: "puzzle-M-mmm-begin-composite-L"), for: .normal)
        case "n":
            currentButton.setImage(UIImage(named: "puzzle-N-nnn-begin-composite-L"), for: .normal)
        case "p":
            currentButton.setImage(UIImage(named: "puzzle-P-puh-begin-composite-L"), for: .normal)
        case "q":
            currentButton.setImage(UIImage(named: "puzzle-Q-qwuh-begin-composite-L"), for: .normal)
        case "r":
            currentButton.setImage(UIImage(named: "puzzle-R-ruh-begin-composite-L"), for: .normal)
        case "s":
            currentButton.setImage(UIImage(named: "puzzle-S-sss-begin-composite-L"), for: .normal)
        case "t":
            currentButton.setImage(UIImage(named: "puzzle-T-tttt-begin-composite-L"), for: .normal)
        case "v":
            currentButton.setImage(UIImage(named: "puzzle-V-vv-begin-composite-L"), for: .normal)
        case "w":
            currentButton.setImage(UIImage(named: "puzzle-W-wuh-begin-composite-L"), for: .normal)
        case "x":
            currentButton.setImage(UIImage(named: "puzzle-X-ks-begin-composite-L"), for: .normal)
        case "y":
            currentButton.setImage(UIImage(named: "puzzle-Y-yuh-composite-L"), for: .normal)
        case "z":
            currentButton.setImage(UIImage(named: "puzzle-Z-zzz-begin-composite-L"), for: .normal)
        default:
            break
        }
    }
    
    func setEndingSoundsCompositePuzzle(currentButton: PuzzleButton) {
        switch currentButton.currentTitle {
        case "b":
            currentButton.setImage(UIImage(named: "puzzle-B-buh-end-composite-L"), for: .normal)
        case "d":
            currentButton.setImage(UIImage(named: "puzzle-D-duh-end-composite-L"), for: .normal)
        case "f":
            currentButton.setImage(UIImage(named: "puzzle-F-fuh-end-composite-L"), for: .normal)
        case "g":
            currentButton.setImage(UIImage(named: "puzzle-G-guh-end-composite-L"), for: .normal)
        case "k":
            currentButton.setImage(UIImage(named: "puzzle-K-kuh-begin-composite-L"), for: .normal)
        case "l":
            currentButton.setImage(UIImage(named: "puzzle-L-lll-end-composite-L"), for: .normal)
        case "m":
            currentButton.setImage(UIImage(named: "puzzle-M-mmm-end-composite-L"), for: .normal)
        case "n":
            currentButton.setImage(UIImage(named: "puzzle-N-nnn-end-composite-L"), for: .normal)
        case "p":
            currentButton.setImage(UIImage(named: "puzzle-P-puh-end-composite-L"), for: .normal)
        case "r":
            currentButton.setImage(UIImage(named: "puzzle-R-ruh-end-composite-L"), for: .normal)
        case "s":
            currentButton.setImage(UIImage(named: "puzzle-S-sss-end-composite-L"), for: .normal)
        case "t":
            currentButton.setImage(UIImage(named: "puzzle-T-tttt-end-composite-L"), for: .normal)
        case "x":
            currentButton.setImage(UIImage(named: "puzzle-X-ks-end-composite-L"), for: .normal)
        case "z":
            currentButton.setImage(UIImage(named: "puzzle-Z-zzz-end-composite-L"), for: .normal)
        default:
            break
        }
    }
    
    let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let vowelStoryBoard:UIStoryboard = UIStoryboard(name: "VowelLetter", bundle:nil)
    let beginningSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "BeginningSounds", bundle:nil)
    let endingSoundsStoryBoard:UIStoryboard = UIStoryboard(name: "EndingSoundsPages", bundle:nil)
    
    @objc func buttonTapped(sender: PuzzleButton) {
        switch sender.category{
        case "vowel":
            if vowelSaveFile![sender.currentTitle!] as! Int >= 6 {
                let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
                vc.passedInLetter = sender.currentTitle
                present(vc, animated: true)
            } else {
                let vc = vowelStoryBoard.instantiateViewController(identifier: "real_vowel_letter_vc") as! RealVowelViewController
                vc.desiredLabelOne = sender.currentTitle
                present(vc, animated: true)
            }
        //case "begin":
            //if beginningSoundsSaveFile![sender.currentTitle!] as! Int >= 12 {
                //let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
                //vc.passedInLetter = sender.currentTitle
                //vc.letterCategory = "begin"
                //present(vc, animated: true)
            //} else {
                //let vc = beginningSoundsStoryBoard.instantiateViewController(identifier: "oneButtonLevel_vc") as! //OneButtonLevelViewController
                //vc.desiredLabelOne = sender.currentTitle
                //present(vc, animated: true)
            //}
        case "end":
            if endingSoundsSaveFile![sender.currentTitle!] as! Int >= 6 {
                let vc = mainStoryBoard.instantiateViewController(identifier: "rhyme_vc") as! RhymeViewController
                vc.passedInLetter = sender.currentTitle
                vc.letterCategory = "end"
                present(vc, animated: true)
            } else {
                let vc = endingSoundsStoryBoard.instantiateViewController(identifier: "learn_ending_sounds_vc") as! LearnEndingSounds
                vc.passedInLetter = sender.currentTitle
                vc.passedInArray = ["b", "d", "f", "g", "k", "l", "m", "n", "p", "r", "s", "t", "x", "z"]
                present(vc, animated: true)
            }
        default:
            break
        }
    }
    
    
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    
}
