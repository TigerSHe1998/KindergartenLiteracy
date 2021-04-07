//
//  VowelRhymeViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 4/7/21.
//

import Foundation
import UIKit
import AVFoundation
import SwiftUI


class VowelRhymeViewController: UIViewController {
    
    var passedInLetter: String!
    
    
    @IBOutlet var pic: UIButton!
    @IBOutlet var word: UIButton!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch passedInLetter{
            case "a", "A":
                pic.setImage(UIImage(named: "puzzle-A-ahh-composite"), for: .normal)
                word.setImage(UIImage(named: "a1word"), for: .normal)
            default:
                break
        }
    }
    
    
    
    
}
