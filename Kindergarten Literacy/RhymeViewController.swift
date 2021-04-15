//
//  VowelRhymeViewController.swift
//  Kindergarten Literacy
//
//  Created by 徐浩云 on 4/7/21.
//

import UIKit
import AVFoundation

class RhymeViewController: UIViewController {
    
    var passedInLetter: String!
    var letterCategory: String!
    
    @IBOutlet var letter: UIButton!
    @IBOutlet var completePuzzle: UIImageView!
    @IBOutlet var rhymeLabel: UILabel!
    
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageSetup()
    }
    
    
    func pageSetup() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 2
        
        switch passedInLetter{
            case "a", "A":
                configure(puzzleImage: "puzzle-A-ahh-composite", rhymeAudio: "puzzle-A-ahh-rhyme")
                let rhyme = NSMutableAttributedString(string: "Bat, bat,\nCome under my hat,\nAnd I'll give you a slice of bacon,\nAnd when I bake,\nI'll give you a cake,\nIf I am not mistaken.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:1,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:6,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:25,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:109,length:1))
                rhymeLabel.attributedText = rhyme
                
            case "a ", "A ":
                configure(puzzleImage: "puzzle-A-short-composite", rhymeAudio: "puzzle-A-short-rhyme")
                
            case "b", "B":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-B-buh-begin-composite", rhymeAudio: "puzzle-B-buh-begin-rhyme")
                    
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeAudio: "puzzle-B-buh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Rub a dub dub,\nThree men in a tub,\nAnd who do you think they be?\nThe butcher, the baker,\nThe candlestick-maker,\nTurn’em out,\nknaves all three!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:2,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:8,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:12,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:32,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "c", "C":
                configure(puzzleImage: "puzzle-C-kuh-begin-composite", rhymeAudio: "puzzle-C-kuh-begin-rhyme")
            case "d", "D":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-D-duh-begin-composite", rhymeAudio: "puzzle-D-duh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-D-duh-end-composite", rhymeAudio: "puzzle-D-duh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Peter, Peter, pumpkin eater,\nHad a wife and couldn’t keep her,\nHe put her in a pumpkin shell,\nAnd then he kept her very well.\n\nPeter, Peter, pumpkin eater,\nHad another, and didn’t love her,\nPeter learned to read and spell,\nAnd then he loved her very well.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:31,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:158,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:202,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:239,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "e", "E":
                configure(puzzleImage: "puzzle-E-short-composite", rhymeAudio: "puzzle-E-short-rhyme")
            case "f", "F":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-F-fuh-begin-composite", rhymeAudio: "puzzle-F-fuh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-F-fuh-end-composite", rhymeAudio: "puzzle-F-fuh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Turtle took a little walk,\nHoping no one would bother him.\nWhen a dog said “Woof woof woof” to talk,\nTurtle acted deaf under a limb,\nHe nearly got stolen by a thief,\nBut bit his thumb hard!  When a ref\nReached down he ducked under a leaf,\nAnd finally got free outrunning a chef.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:79,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:84,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:89,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:117,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:163,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:200,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:236,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:276,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "g", "G":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-G-guh-begin-composite", rhymeAudio: "puzzle-G-guh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-G-guh-end-composite", rhymeAudio: "puzzle-G-guh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "To market, to market,\nTo buy a fat pig,\nHome again, home again,\nJiggety jig.\n\nTo market, to market,\nTo buy a fat hog,\nHome again, home again,\nJiggety jog.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:37,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:74,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:115,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:152,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "h", "H":
                configure(puzzleImage: "puzzle-H-huh-begin-composite", rhymeAudio: "puzzle-H-huh-begin-rhyme")
            case "i", "I":
                configure(puzzleImage: "puzzle-I-ee-composite", rhymeAudio: "puzzle-I-ee-rhyme")
            case "i ", "I ":
                configure(puzzleImage: "puzzle-I-short-composite", rhymeAudio: "puzzle-I-short-rhyme")
            case "j", "J":
                configure(puzzleImage: "puzzle-J-juh-begin-composite", rhymeAudio: "puzzle-J-juh-begin-rhyme")
            case "k", "K":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-K-kuh-begin-composite", rhymeAudio: "puzzle-K-kuh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-K-kuh-end-composite", rhymeAudio: "puzzle-K-kuh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Little Bo-Peep has lost her sheep,\nAnd can’t tell where to find them,\nLet them alone, and they’ll come home,\nAnd bring their tails behind them.\n\nLittle Bo-Peep fell fast asleep,\nAnd dreamt she heard them bleating,\nAnd when she awoke, she found it a joke,\nFor still they were all fleeting.\n\nThen up she took her little crook,\nDetermined for to find them,\nShe found them indeed, but it made her heart bleed,\nFor they’d left all their tails behind them.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:230,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:251,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:305,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:322,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "l", "L":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-L-lll-begin-composite", rhymeAudio: "puzzle-L-lll-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-L-lll-end-composite", rhymeAudio: "puzzle-L-lll-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Jack and Jill went up the hill,\nTo fetch a pail of water.\nJack fell down, and broke his crown,\nAnd Jill came tumbling after.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:11,length:2))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:28,length:2))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:46,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:65,length:2))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:101,length:2))
                    rhymeLabel.attributedText = rhyme
                }
            case "m", "M":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-M-mmm-begin-composite", rhymeAudio: "puzzle-M-mmm-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-M-mmm-end-composite", rhymeAudio: "puzzle-M-mmm-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "There was an old woman got tossed in a blanket\nSeventeen times as high as the moon,\nBut where she was going no person could tell,\nFor under her arm she carried a broom.\n\n“Old woman, old woman, old woman,” said I,\n“Where in the world are you flying so high?”\n“To sweep the cobwebs from the sky,\nAnd I’ll be with you by and by.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:146,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:166,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:283,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "n", "N":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-N-nnn-begin-composite", rhymeAudio: "puzzle-N-nnn-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-B-buh-end-composite", rhymeAudio: "puzzle-B-buh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "There was an old woman got tossed in a blanket\nSeventeen times as high as the moon,\nBut where she was going no person could tell,\nFor under her arm she carried a broom.\n“Old woman, old woman, old woman,” said I,\n“Where in the world are you flying so high?”\n“To sweep the cobwebs from the sky,\nAnd I’ll be with you by and by.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:146,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:166,length:2))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:283,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "o", "O":
                configure(puzzleImage: "puzzle-O-short-composite", rhymeAudio: "puzzle-O-short-rhyme")
            case "p", "P":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-P-puh-begin-composite", rhymeAudio: "puzzle-P-puh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-P-puh-end-composite", rhymeAudio: "puzzle-P-puh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Handy Pandy, Jack-a-Dandy,\nLoves cup cakes and sugar-candy,\nHe bought some at a grocer’s shop,\nAnd out he came, hop, hop, hop.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:35,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:92,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:114,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:119,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:124,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "q", "Q":
                configure(puzzleImage: "puzzle-Q-qwuh-begin-composite", rhymeAudio: "puzzle-Q-qwuh-begin-rhyme")
            case "r", "R":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-R-ruh-begin-composite", rhymeAudio: "puzzle-R-ruh-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-R-ruh-end-composite", rhymeAudio: "puzzle-R-ruh-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "A grizzly bear might roar a roarrrrrr,\nA polar bear might growl brrrrrr.\nA chimp might blubber a bbbbbbbb\nMy grandpa sure would snore a snorrrrrre.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:13,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:24,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:31,length:6))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:45,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:65,length:6))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:93,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:119,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:131,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:139,length:6))
                    rhymeLabel.attributedText = rhyme
                }
            case "s", "S":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-S-sss-begin-composite", rhymeAudio: "puzzle-S-sss-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-S-sss-end-composite", rhymeAudio: "puzzle-S-sss-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Cats like R, they say purrrrr.\nDogs do too, but they say grrrr,\nGoats like A, they bleat baaaa.\nDucks like Q, they quack quack.\nSnakes like S, so they say hisss\nBees like Zs, so they go buzzzz.\nKids? They're always quiet, just because.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:3,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:68,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:100,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:133,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:157,length:3))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:164,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:172,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "t", "T":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-T-tttt-begin-composite", rhymeAudio: "puzzle-T-tttt-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-T-tttt-end-composite", rhymeAudio: "puzzle-T-tttt-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Lucy Locket lost her pocket,\nKitty Fisher found It,\nThere was not a penny in It,\nBut a ribbon round it.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:10,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:15,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:26,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:49,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:64,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:78,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:101,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "u", "U":
                configure(puzzleImage: "puzzle-U-short-composite", rhymeAudio: "puzzle-U-short-rhyme")
            case "v", "V":
                configure(puzzleImage: "puzzle-V-vv-begin-composite", rhymeAudio: "puzzle-V-vv-begin-rhyme")
            case "w", "W":
                configure(puzzleImage: "puzzle-W-wuh-begin-composite", rhymeAudio: "puzzle-W-wuh-begin-rhyme")
            case "x", "X":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-X-ks-begin-composite", rhymeAudio: "puzzle-X-ks-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-X-ks-end-composite", rhymeAudio: "puzzle-X-ks-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Dum diddle dee doh,\nOx wore a tuxedo,\nThe dancer boxed with T-Rex.\nJack popped from a mailbox,\nFirst swung his hand ax,\nNext tattled that red fox\nHad pooped in the sandbox—\nThen all of them taxied away.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:21,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:64,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:92,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:117,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:144,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:170,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            case "y", "Y":
                configure(puzzleImage: "puzzle-Y-yuh-rhyme-composite", rhymeAudio: "puzzle-Y-yuh-rhyme")
            case "z", "Z":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-Z-zzz-begin-composite", rhymeAudio: "puzzle-Z-zzz-begin-rhyme")
                } else if letterCategory == "end" {
                    configure(puzzleImage: "puzzle-Z-zzz-end-composite", rhymeAudio: "puzzle-Z-zzz-end-rhyme")
                    let rhyme = NSMutableAttributedString(string: "My sister’s great on every quiz,\nShe loves jewelry and glitz.\nMy brother’s a real football whiz,\nLoves tackling passers on a blitz.\nI’m class clown, love acting nuts,\nStumble bumbling like some ditz,\nJoking, acting like a klutz,\nMaking gross sounds with my armpits.\nStuffing broccoli inside donuts,\nLove making kids laugh with my wits.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:30,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:59,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:94,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:129,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:197,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:226,length:1))
                    rhymeLabel.attributedText = rhyme
                }
            default:
                break
            }
    }
    
    
    func configure(puzzleImage: String, rhymeAudio: String) {
        completePuzzle.image = UIImage(named: puzzleImage)
        let pathToSound = Bundle.main.path(forResource: rhymeAudio, ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {}
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func replayButtonTapped(_ sender: Any) {
        pageSetup()
    }
    
    
    @IBAction func coinButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    
    @IBAction func puzzleButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
