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
                configure(puzzleImage: "puzzle-A-short-composite", rhymeAudio: "puzzle-A-short-rhyme")
                let rhyme = NSMutableAttributedString(string: "Bat, bat,\nCome under my hat,\nAnd I'll give you a slice of bacon,\nAnd when I bake,\nI'll give you a cake,\nIf I am not mistaken.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 16.0)!])
                rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:1,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:6,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:25,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:109,length:1))
                rhymeLabel.attributedText = rhyme
                
            case "a ", "A ":
                configure(puzzleImage: "puzzle-A-ahh-composite", rhymeAudio: "puzzle-A-ahh-rhyme")
                let rhyme = NSMutableAttributedString(string: "Children call me Father Goose,\nBecause when I want to wander,\nI ride through the air\nOn a very fine gander.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:18,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:47,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:55,length:1))
                rhymeLabel.attributedText = rhyme
                
            case "b", "B":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-B-buh-begin-composite", rhymeAudio: "puzzle-B-buh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Rock-a-bye, Baby, on the tree top,\nWhen the wind blows the cradle will rock,\nWhen the bough breaks the cradle will fall,\nand down will come Baby, cradle, and all.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:18,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:47,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:55,length:1))
                    rhymeLabel.attributedText = rhyme
                    
                    
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
                let rhyme = NSMutableAttributedString(string: "Little Robin Redbreast sat upon a tree,\nUp went the Kitty-Cat, and down went he,\nDown came Kitty-Cat, away Robin ran,\nSays little Robin Redbreast:\n\"Catch me if you can!\"", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:58,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:97,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:148,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:164,length:1))
                    rhymeLabel.attributedText = rhyme

            case "d", "D":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-D-duh-begin-composite", rhymeAudio: "puzzle-D-duh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Cock a doodle do!\nMy mother’s lost her shoe,\nMy father’s lost his fiddle-stick,\nAnd doesn’t know what to do.\n\nCock a doodle do!\nWhat is my mother to do?\nTill Father finds his fiddle-stick\nShe’ll dance without her shoe!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:7,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:14,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:84,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:117,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:124,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:149,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:195,length:1))
                        rhymeLabel.attributedText = rhyme
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
                let rhyme = NSMutableAttributedString(string: "Hickety, pickety, my black hen,\nShe lays eggs for gentlemen,\nGentlemen come every day,\nTo see what my black hen does lay.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:4,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:13,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:28,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:41,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:57,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:68,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:76,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:109,length:1))
                    rhymeLabel.attributedText = rhyme
            case "f", "F":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-F-fuh-begin-composite", rhymeAudio: "puzzle-F-fuh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Old King Cole, was a merry old soul,\nAnd a merry old soul was he,\nHe called for his pipe, and he\ncalled for his bowl,\nAnd he called for his fiddlers three.\nEvery fiddler, he had a fine fiddle,\nAnd a very fine fiddle had he.\nTwee tweedle dee, tweedle dee, went the fiddlers three.\nOh, there’s none so rare,\nAs can compare\nWith King Cole\nAnd his fiddlers three!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:76,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:104,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:132,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:140,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:162,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:180,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:185,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:204,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:209,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:264,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:344,length:1))
                        rhymeLabel.attributedText = rhyme
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
                    let rhyme = NSMutableAttributedString(string: "As I was going up Primrose Hill,\nPrimrose Hill was dirty,\nThere I met a pretty girl,\nAnd she gave me a curtsey.\n\nLittle girl, pretty girl,\nBlessings be upon you,\nIf I had half-a-dollar a day,\nI’d spend it all on you.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:9,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:80,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:93,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:121,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:133,length:1))
                        rhymeLabel.attributedText = rhyme

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
                let rhyme = NSMutableAttributedString(string: "Humpty Dumpty sat on a wall,\nHumpty Dumpty had a great fall,\nAll the king's horses and all the king's men,\nCouldn't put Humpty Dumpty together again.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:29,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:43,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:76,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:120,length:1))
                    rhymeLabel.attributedText = rhyme
            case "i ", "I ":
                configure(puzzleImage: "puzzle-I-ee-composite", rhymeAudio: "puzzle-I-ee-rhyme")
                let rhyme = NSMutableAttributedString(string: "While eating hot chili,\nThey planned a safari\nTo bring back a yeti.\nBoth dressed in new khaki,\nTopped off with a kepi,\nBut learned that their taxi,\nHad almost hit Bambi,\n\nSo instead took a jet ski\nAnd found a bikini!\n(But just an emoji.)", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:21,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:44,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:65,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:92,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:116,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:145,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:167,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:195,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:212,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:214,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:234,length:1))
                rhymeLabel.attributedText = rhyme
                    

            case "i", "I":
                configure(puzzleImage: "puzzle-I-short-composite", rhymeAudio: "puzzle-I-short-rhyme")
                let rhyme = NSMutableAttributedString(string: "Jack, be nimble, Jack, be quick.\nJack, jump over the candlestick.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                
                
                rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:10,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:28,length:1))
                rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:61,length:1))
                rhymeLabel.attributedText = rhyme
                    
            case "j", "J":
                configure(puzzleImage: "puzzle-J-juh-begin-composite", rhymeAudio: "puzzle-J-juh-begin-rhyme")
                let rhyme = NSMutableAttributedString(string: "Here am I, Little jumping Joan,\nWhen nobody's with me,\nI’m always alone.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:18,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:26,length:1))
                    rhymeLabel.attributedText = rhyme
            case "k", "K":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-K-kuh-begin-composite", rhymeAudio: "puzzle-K-kuh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Kitty-Cat sits by the fire,\nNapping without a care.\nIn walks the little dog,\nSays: “Kitty, are you\nthere?\nHow do you do, Mistress Kitty?\nMistress Kitty, how do you do?”\n“I thank you kindly, little dog,\nI do as well as you!”", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:84,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:130,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:146,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:182,length:1))
                        rhymeLabel.attributedText = rhyme
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
                    let rhyme = NSMutableAttributedString(string: "I love you well, my little brother,\nAnd you are fond of me,\nLet us be kind to one another,\nAs brothers ought to be.\nYou shall learn to play with me,\nAnd learn to use my toys,\nAnd then I think that we shall be\nTwo happy little boys.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:2,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:20,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:60,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:126,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:153,length:1))
                        rhymeLabel.attributedText = rhyme

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
                    let rhyme = NSMutableAttributedString(string: "When good King Arthur ruled his land\nHe was a goodly king,\nHe stole three sacks of barley meal\nTo make a bag-pudding.\nA bag-pudding the king did make,\nAnd stuffed it well with plums,\nAnd in it put great lumps of fat\nAs big as my two thumbs.\nThe king and queen ate less than half,\nNot much more, though they tried,\nAnd what they could not eat that night\nThe queen next morning fried.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:90,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:98,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:145,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:284,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:289,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:368,length:1))
                        rhymeLabel.attributedText = rhyme

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
                    let rhyme = NSMutableAttributedString(string: "“Croak,” said the toad, “I’m hungry I think,\nTo-day I’ve had nothing to eat or to drink,\nI’ll crawl to a garden and jump through the pales,\nAnd there I’ll dine nicely on slugs and on snails.”\n\n“Ho, ho!” quoth the frog, “is that what you mean?\nThen I’ll hop away to the next meadow stream,\nThere I will drink, and eat worms and slugs too,\nAnd then I shall have a good dinner like you.”", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:61,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:160,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:269,length:1))
                        rhymeLabel.attributedText = rhyme


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
                let rhyme = NSMutableAttributedString(string: "Hot cross buns, hot cross buns.\nOne a penny, two a penny,\nHot cross buns!\n\nIf your daughters do not like them,\nGive them to your sons.\nOne a penny, two a penny,\nHot cross buns!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:1,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:6,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:17,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:22,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:59,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:64,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:97,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:162,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:167,length:1))
                    rhymeLabel.attributedText = rhyme
            case "p", "P":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-P-puh-begin-composite", rhymeAudio: "puzzle-P-puh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "The sow came in with the saddle,\nThe little pig rocked the cradle,\nThe dish jumped up on the table\nTo see the pot swallow the ladle.\nThe spit that stood behind the door\nThrew the pudding-stick on the floor.\n“Gracious!” said the gridiron,\n“Can’t you agree?\nI’m the boss policeman,\nBring them to me!”", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:43,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:107,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:174,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:261,length:1))
                        rhymeLabel.attributedText = rhyme
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
                let rhyme = NSMutableAttributedString(string: "Queen Croc napped on her quilt,\nMama duck quacked, “Be quiet!”\n“What?” Quacked the duckling.\n“Quit!” Mama quacked, “Ducks are her diet!”", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:25,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:42,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:55,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:71,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:94,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:106,length:1))
                    rhymeLabel.attributedText = rhyme

            case "r", "R":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-R-ruh-begin-composite", rhymeAudio: "puzzle-R-ruh-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Ring around the roses,\nA pocketful of posies,\nAshes, Ashes, we all fall down!\n\nRaising up with daisies,\nRising up with tulips,\nPopping up with poppies,\nWe all pop up!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:16,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:79,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:104,length:1))
                        rhymeLabel.attributedText = rhyme
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
                    let rhyme = NSMutableAttributedString(string: "Little Robin Redbreast sat upon a tree,\nUp went the Kitty-Cat, and down went he,\nDown came Kitty-Cat, away Robin ran,\nSays little Robin Redbreast: “Catch me if you can!”\n\nLittle Robin Redbreast jumped upon a spade,\nKitty-Cat jumped after him, and then he was afraid.\nLittle Robin chirped and sang, and what did Kitty say?\nKitty-Cat said: “Meow, meow, meow,” and Robin flew away.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:23,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:118,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:208,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:292,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:332,length:1))
                        rhymeLabel.attributedText = rhyme
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
                    let rhyme = NSMutableAttributedString(string: "Thomas A’Tattamus took two T’s\nTo tie two tubs to two tall trees,\nTo frighten the terrible Thomas A’Tattamus!\nTell me how many T’s there are in all that?", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:9,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:27,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:31,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:34,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:38,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:42,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:47,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:50,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:54,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:59,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:66,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:82,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:91,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:100,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:110,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:127,length:1))
                        rhymeLabel.attributedText = rhyme

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
                let rhyme = NSMutableAttributedString(string: "Rub a dub dub,\nThree men in a tub,\nAnd who do you think they be?\nThe butcher, the baker,\nThe candlestick-maker,\nTurn’em out, knaves all three!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:1,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:7,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:11,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:31,length:1))
                    rhymeLabel.attributedText = rhyme

            case "v", "V":
                configure(puzzleImage: "puzzle-V-vv-begin-composite", rhymeAudio: "puzzle-V-vv-begin-rhyme")
                let rhyme = NSMutableAttributedString(string: "When Vic dropped his vanilla cone,\nIn very weird voice he moaned a groan.\nBigfoot offered some syrup for a trial.\n“Yuck!” Vic roared.  “Vinegar’s vile!”\nGiant Cyclops grinned big, said, “No!\nTry that vast upside down cone: volcano!”", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:5,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:21,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:38,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:49,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:122,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:136,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:146,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:200,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:223,length:1))
                    rhymeLabel.attributedText = rhyme
            case "w", "W":
                configure(puzzleImage: "puzzle-W-wuh-begin-composite", rhymeAudio: "puzzle-W-wuh-begin-rhyme")
                let rhyme = NSMutableAttributedString(string: "Wee Willie Winkie runs through the town,\nUpstairs and downstairs, in his nightgown,\nTapping at the window, crying at the lock,\nAre the children all in bed? It's now eight o'clock?", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:4,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:11,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:99,length:1))
                    rhymeLabel.attributedText = rhyme
            case "x", "X":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-X-ks-begin-composite", rhymeAudio: "puzzle-X-ks-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "I hate exams at school, can’t sit\nStill! Look for some excuse to exit.\nStaying quiet’s extremely tough!\nYes, school’s ok to learn some stuff,\nBut not fireworks! Why things explode!\nI’d exert myself if teachers showed\nHow to make firecrackers louder,\nCould study fuses, stuffing, powder.\nI expect I’d study till it hurt\nTo be a big explosion expert!", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:8,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:56,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:66,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:88,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:173,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:186,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:290,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:332,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:342,length:1))
                        rhymeLabel.attributedText = rhyme
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
                configure(puzzleImage: "puzzle-Y-yuh-composite", rhymeAudio: "puzzle-Y-yuh-rhyme")
                let rhyme = NSMutableAttributedString(string: "Baa, baa, black sheep, have you any wool?\nYes sir, yes sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy,\nWho lives down the lane.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                    rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:28,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:42,length:1))
                    rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:51,length:1))
                    rhymeLabel.attributedText = rhyme
            case "z", "Z":
                if letterCategory == "begin" {
                    configure(puzzleImage: "puzzle-Z-zzz-begin-composite", rhymeAudio: "puzzle-Z-zzz-begin-rhyme")
                    let rhyme = NSMutableAttributedString(string: "Buzzing hornets always scare me,\nWhen they zigzag round my head,\nZipping, zapping, like some carefree\nZany clowns!  I’ll zoom to bed,\nBury myself under the covers,\nHave zero patience, want them dead!\nWise up all you hornet lovers–\nSwitch to spiders instead.", attributes: [NSAttributedString.Key.font :UIFont(name: "Helvetica", size: 20.0)!])
                        rhyme.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: rhyme.length))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:43,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:65,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:74,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:102,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:121,length:1))
                        rhyme.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:169,length:1))
                        rhymeLabel.attributedText = rhyme

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
