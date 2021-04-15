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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 150, y: 10, width: view.frame.size.width - 10, height: view.frame.size.height - 10))
        scrollView.backgroundColor = .white
        view.addSubview(scrollView)
        
        let aBeginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 140, height:175))
        configure(currentTitle: "a", currentButton: aBeginButton, category: "begin")
        scrollView.addSubview(aBeginButton)
    
        let aVowelButton = UIButton(frame: CGRect(x: 0, y: 195, width: 140, height:175))
        configure(currentTitle: "a", currentButton: aVowelButton, category: "vowel")
        scrollView.addSubview(aVowelButton)
        
        let bBeginButton = UIButton(frame: CGRect(x: 160, y: 0, width: 140, height:175))
        configure(currentTitle: "b", currentButton: bBeginButton, category: "begin")
        scrollView.addSubview(bBeginButton)

        let bEndButton = UIButton(frame: CGRect(x: 160, y: 195, width: 140, height:175))
        configure(currentTitle: "b", currentButton: bEndButton, category: "end")
        scrollView.addSubview(bEndButton)

        let cButton = UIButton(frame: CGRect(x: 320, y: 0, width: 140, height:175))
        configure(currentTitle: "c", currentButton: cButton, category: "begin")
        scrollView.addSubview(cButton)

        let dBeginButton = UIButton(frame: CGRect(x: 320, y: 195, width: 140, height:175))
        configure(currentTitle: "d", currentButton: dBeginButton, category: "begin")
        scrollView.addSubview(dBeginButton)

        let dEndButton = UIButton(frame: CGRect(x: 480, y: 0, width: 140, height:175))
        configure(currentTitle: "d", currentButton: dEndButton, category: "end")
        scrollView.addSubview(dEndButton)

        let eButton = UIButton(frame: CGRect(x: 480, y: 195, width: 140, height:175))
        configure(currentTitle: "e", currentButton: eButton, category: "vowel")
        scrollView.addSubview(eButton)

        let fBeginButton = UIButton(frame: CGRect(x: 640, y: 0, width: 140, height:175))
        configure(currentTitle: "f", currentButton: fBeginButton, category: "begin")
        scrollView.addSubview(fBeginButton)

        let fEndButton = UIButton(frame: CGRect(x: 640, y: 195, width: 140, height:175))
        configure(currentTitle: "f", currentButton: fEndButton, category: "end")
        scrollView.addSubview(fEndButton)

        let gBeginButton = UIButton(frame: CGRect(x: 800, y: 0, width: 140, height:175))
        configure(currentTitle: "g", currentButton: gBeginButton, category: "begin")
        scrollView.addSubview(gBeginButton)

        let gEndButton = UIButton(frame: CGRect(x: 800, y: 195, width: 140, height:175))
        configure(currentTitle: "g", currentButton: gEndButton, category: "end")
        scrollView.addSubview(gEndButton)

        let hButton = UIButton(frame: CGRect(x: 960, y: 0, width: 140, height:175))
        configure(currentTitle: "h", currentButton: hButton, category: "begin")
        scrollView.addSubview(hButton)

        let iLetterButton = UIButton(frame: CGRect(x: 960, y: 195, width: 140, height:175))
        configure(currentTitle: "i", currentButton: iLetterButton, category: "vowel")
        scrollView.addSubview(iLetterButton)

        let iVowelButton = UIButton(frame: CGRect(x: 1120, y: 0, width: 140, height:175))
        configure(currentTitle: "i", currentButton: iVowelButton, category: "vowel")
        scrollView.addSubview(iVowelButton)

        let jButton = UIButton(frame: CGRect(x: 1120, y: 195, width: 140, height:175))
        configure(currentTitle: "j", currentButton: jButton, category: "begin")
        scrollView.addSubview(jButton)

        let kBeginButton = UIButton(frame: CGRect(x: 1280, y: 0, width: 140, height:175))
        configure(currentTitle: "k", currentButton: kBeginButton, category: "begin")
        scrollView.addSubview(kBeginButton)

        let kEndButton = UIButton(frame: CGRect(x: 1280, y: 195, width: 140, height:175))
        configure(currentTitle: "k", currentButton: kEndButton, category: "end")
        scrollView.addSubview(kEndButton)

        let lBeginButton = UIButton(frame: CGRect(x: 1440, y: 0, width: 140, height:175))
        configure(currentTitle: "l", currentButton: lBeginButton, category: "begin")
        scrollView.addSubview(lBeginButton)

        let lEndButton = UIButton(frame: CGRect(x: 1440, y: 195, width: 140, height:175))
        configure(currentTitle: "l", currentButton: lEndButton, category: "end")
        scrollView.addSubview(lEndButton)

        let mBeginButton = UIButton(frame: CGRect(x: 1600, y: 0, width: 140, height:175))
        configure(currentTitle: "m", currentButton: mBeginButton, category: "begin")
        scrollView.addSubview(mBeginButton)

        let mEndButton = UIButton(frame: CGRect(x: 1600, y: 195, width: 140, height:175))
        configure(currentTitle: "m", currentButton: mEndButton, category: "end")
        scrollView.addSubview(mEndButton)

        let nBeginButton = UIButton(frame: CGRect(x: 1760, y: 0, width: 140, height:175))
        configure(currentTitle: "n", currentButton: nBeginButton, category: "begin")
        scrollView.addSubview(nBeginButton)

        let nEndButton = UIButton(frame: CGRect(x: 1760, y: 195, width: 140, height:175))
        configure(currentTitle: "n", currentButton: nEndButton, category: "end")
        scrollView.addSubview(nEndButton)

        let oButton = UIButton(frame: CGRect(x: 1920, y: 0, width: 140, height:175))
        configure(currentTitle: "o", currentButton: oButton, category: "vowel")
        scrollView.addSubview(oButton)

        let pBeginButton = UIButton(frame: CGRect(x: 1920, y: 195, width: 140, height:175))
        configure(currentTitle: "p", currentButton: pBeginButton, category: "begin")
        scrollView.addSubview(pBeginButton)

        let pEndButton = UIButton(frame: CGRect(x: 2080, y: 0, width: 140, height:175))
        configure(currentTitle: "p", currentButton: pEndButton, category: "end")
        scrollView.addSubview(pEndButton)

        let qButton = UIButton(frame: CGRect(x: 2080, y: 195, width: 140, height:175))
        configure(currentTitle: "q", currentButton: qButton, category: "begin")
        scrollView.addSubview(qButton)

        let rBeginButton = UIButton(frame: CGRect(x: 2240, y: 0, width: 140, height:175))
        configure(currentTitle: "r", currentButton: rBeginButton, category: "begin")
        scrollView.addSubview(rBeginButton)

        let rEndButton = UIButton(frame: CGRect(x: 2240, y: 195, width: 140, height:175))
        configure(currentTitle: "r", currentButton: rEndButton, category: "end")
        scrollView.addSubview(rEndButton)

        let sBeginButton = UIButton(frame: CGRect(x: 2400, y: 0, width: 140, height:175))
        configure(currentTitle: "s", currentButton: sBeginButton, category: "begin")
        scrollView.addSubview(sBeginButton)

        let sEndButton = UIButton(frame: CGRect(x: 2400, y: 195, width: 140, height:175))
        configure(currentTitle: "s", currentButton: sEndButton, category: "end")
        scrollView.addSubview(sEndButton)

        let tBeginButton = UIButton(frame: CGRect(x: 2560, y: 0, width: 140, height:175))
        configure(currentTitle: "t", currentButton: tBeginButton, category: "begin")
        scrollView.addSubview(tBeginButton)

        let tEndButton = UIButton(frame: CGRect(x: 2560, y: 195, width: 140, height:175))
        configure(currentTitle: "t", currentButton: tEndButton, category: "end")
        scrollView.addSubview(tEndButton)

        let uButton = UIButton(frame: CGRect(x: 2720, y: 0, width: 140, height:175))
        configure(currentTitle: "u", currentButton: uButton, category: "vowel")
        scrollView.addSubview(uButton)

        let vButton = UIButton(frame: CGRect(x: 2720, y: 195, width: 140, height:175))
        configure(currentTitle: "v", currentButton: vButton, category: "begin")
        scrollView.addSubview(vButton)

        let wButton = UIButton(frame: CGRect(x: 2880, y: 0, width: 140, height:175))
        configure(currentTitle: "w", currentButton: wButton, category: "begin")
        scrollView.addSubview(wButton)

        let xBeginButton = UIButton(frame: CGRect(x: 2880, y: 195, width: 140, height:175))
        configure(currentTitle: "x", currentButton: xBeginButton, category: "begin")
        scrollView.addSubview(xBeginButton)

        let xEndButton = UIButton(frame: CGRect(x: 3040, y: 0, width: 140, height:175))
        configure(currentTitle: "x", currentButton: xEndButton, category: "begin")
        scrollView.addSubview(xEndButton)

        let yButton = UIButton(frame: CGRect(x: 3040, y: 195, width: 140, height:175))
        configure(currentTitle: "y", currentButton: yButton, category: "begin")
        scrollView.addSubview(yButton)

        let zBeginButton = UIButton(frame: CGRect(x: 3200, y: 0, width: 140, height:175))
        configure(currentTitle: "z", currentButton: zBeginButton, category: "begin")
        scrollView.addSubview(zBeginButton)
        
        let zEndButton = UIButton(frame: CGRect(x: 3200, y: 195, width: 140, height:175))
        configure(currentTitle: "z", currentButton: zEndButton, category: "end")
        scrollView.addSubview(zEndButton)
        
        scrollView.contentSize = CGSize(width: 3500, height: view.frame.size.height - 10)
        
    }
    
    func configure(currentTitle: String, currentButton: UIButton, category: String) {
        var vowelSaveFile = UserDefaults.standard.dictionary(forKey: "VowelPuzzleProgress")
        var endingSoundsSaveFile = UserDefaults.standard.dictionary(forKey: "endingSoundsPuzzleProgress")
        currentButton.setTitle(currentTitle, for: .normal)
        currentButton.backgroundColor = UIColor(named: "lightGreen")
        currentButton.setTitleColor(.black, for: .normal)
        currentButton.titleLabel?.font = UIFont(name: "Chalkboard SE", size: 50)
        currentButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped(sender: UIButton) {
        switch sender.currentTitle {
        case "aBeginButton":
            self.dismiss(animated:true, completion: nil)
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
