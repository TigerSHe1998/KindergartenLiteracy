//
//  CoinViewController.swift
//  Kindergarten Literacy
//
//  Created by Haorong She on 04/01/2021
//

import UIKit

class CoinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rewards = calcRewards(coinCount: coinCount)
        print(rewards)
        showRewards()
    }
    
    // coin count pulled out from save
    var coinCount:Int = UserDefaults.standard.integer(forKey: "coinCount")
    
    // image outlets
    @IBOutlet var coinImage: UIImageView!
    @IBOutlet var stackImage: UIImageView!
    @IBOutlet var bagImage: UIImageView!
    @IBOutlet var acarImage: UIImageView!
    @IBOutlet var bankImage: UIImageView!
   
    // store rewards in array
    var rewards = [0,0,0,0,0]
    
    // calculate reward counts
    // coin = 1, stack = 5, bag = 25, armored car = 125, bank = 625
    func calcRewards(coinCount:Int) -> [Int] {
        let bank = coinCount / 625
        let aCar = (coinCount % 625) / 125
        let bag = (coinCount % 125) / 25
        let stack = (coinCount % 25) / 5
        let coin = coinCount % 5
        return [bank, aCar, bag, stack, coin]
    }

    func showRewards() {
        // set bank
        switch rewards[0] {
        case 0:
            bankImage.isHidden = true
        case 1:
            bankImage.image = UIImage(named: "reward_bank_1")
        case 2:
            bankImage.image = UIImage(named: "reward_bank_2")
        case 3:
            bankImage.image = UIImage(named: "reward_bank_3")
        case 4:
            bankImage.image = UIImage(named: "reward_bank_4")
        case 5:
            bankImage.image = UIImage(named: "reward_bank_5")
        default:
            break
        }
        // armor car
        switch rewards[1] {
        case 0:
            acarImage.isHidden = true
        case 1:
            acarImage.image = UIImage(named: "reward_acar_1")
        case 2:
            acarImage.image = UIImage(named: "reward_acar_2")
        case 3:
            acarImage.image = UIImage(named: "reward_acar_3")
        case 4:
            acarImage.image = UIImage(named: "reward_acar_4")
        case 5:
            acarImage.image = UIImage(named: "reward_acar_5")
        default:
            break
        }
        // bag
        switch rewards[2] {
        case 0:
            bagImage.isHidden = true
        case 1:
            bagImage.image = UIImage(named: "reward_bag_1")
        case 2:
            bagImage.image = UIImage(named: "reward_bag_2")
        case 3:
            bagImage.image = UIImage(named: "reward_bag_3")
        case 4:
            bagImage.image = UIImage(named: "reward_bag_4")
        case 5:
            bagImage.image = UIImage(named: "reward_bag_5")
        default:
            break
        }
        // stack
        switch rewards[3] {
        case 0:
            stackImage.isHidden = true
        case 1:
            stackImage.image = UIImage(named: "reward_stack_1")
        case 2:
            stackImage.image = UIImage(named: "reward_stack_2")
        case 3:
            stackImage.image = UIImage(named: "reward_stack_3")
        case 4:
            stackImage.image = UIImage(named: "reward_stack_4")
        case 5:
            stackImage.image = UIImage(named: "reward_stack_5")
        default:
            break
        }
        // coin
        switch rewards[4] {
        case 0:
            coinImage.isHidden = true
        case 1:
            coinImage.image = UIImage(named: "reward_coin_1")
        case 2:
            coinImage.image = UIImage(named: "reward_coin_2")
        case 3:
            coinImage.image = UIImage(named: "reward_coin_3")
        case 4:
            coinImage.image = UIImage(named: "reward_coin_4")
        case 5:
            coinImage.image = UIImage(named: "reward_coin_5")
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
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
    
}
