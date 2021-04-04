//
//  PuzzleScene.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 3/30/21.
//

import SwiftUI
import UIKit

struct PuzzleView: View {
    var dismiss:(() -> Void)?
    @State var isPresentingHomeView = false
    @State var isPresentingCoinView = false
        
    var body: some View {
        HStack {
            VStack (spacing: 30) {
                Button(action: {
                    self.dismiss?()
                }, label: {
                    Image("back")
                })
                
                Button(action: {
                    self.isPresentingHomeView.toggle()
                    // self.dismiss?()
                }, label: {
                    Image("home")
                })
                
                Button(action: {
                    self.isPresentingCoinView.toggle()
                }, label: {
                    Image("bank")
                })
                
                Button(action: {
                    
                }, label: {
                    Image("puzzle")
                })
            }
            // .background(Color("mediumGreen"))
            
            
            ScrollView(.horizontal) {
                VStack {
                    HStack (spacing: 20) {
                        HStack (spacing: 20) {
                            PuzzleButtonStack(title1: "a", title2: "a")
                            PuzzleButtonStack(title1: "a", title2: "a")
                            PuzzleButtonStack(title1: "a", title2: "ai")
                            PuzzleButtonStack(title1: "an", title2: "ar")
                            PuzzleButtonStack(title1: "ar", title2: "au")
                            PuzzleButtonStack(title1: "aw", title2: "ay")
                            PuzzleButtonStack(title1: "b", title2: "b")
                            PuzzleButtonStack(title1: "bl", title2: "br")
                            PuzzleButtonStack(title1: "c", title2: "c")
                            PuzzleButtonStack(title1: "ch", title2: "ch")
                        }
                        
                        HStack (spacing: 20) {
                            PuzzleButtonStack(title1: "ck", title2: "cl")
                            PuzzleButtonStack(title1: "cr", title2: "d")
                            PuzzleButtonStack(title1: "d", title2: "dr")
                            PuzzleButtonStack(title1: "e", title2: "e")
                            PuzzleButtonStack(title1: "e", title2: "ea")
                            PuzzleButtonStack(title1: "ea", title2: "ee")
                            PuzzleButtonStack(title1: "ei", title2: "er")
                            PuzzleButtonStack(title1: "et", title2: "et")
                            PuzzleButtonStack(title1: "ew", title2: "f")
                            PuzzleButtonStack(title1: "f", title2: "fl")
                        }
                        
                        HStack (spacing: 20) {
                            PuzzleButtonStack(title1: "fr", title2: "ft")
                            PuzzleButtonStack(title1: "g", title2: "g")
                            PuzzleButtonStack(title1: "g", title2: "gh")
                            PuzzleButtonStack(title1: "gh", title2: "gl")
                            PuzzleButtonStack(title1: "gn", title2: "gr")
                            PuzzleButtonStack(title1: "h", title2: "h")
                            PuzzleButtonStack(title1: "i", title2: "i")
                            PuzzleButtonStack(title1: "i", title2: "i")
                            PuzzleButtonStack(title1: "i", title2: "ie")
                            PuzzleButtonStack(title1: "igh", title2: "il")
                        }
                        
                        HStack (spacing: 20){
                            PuzzleButtonStack(title1: "il", title2: "ild")
                            PuzzleButtonStack(title1: "ind", title2: "ion")
                            PuzzleButtonStack(title1: "ir", title2: "j")
                            PuzzleButtonStack(title1: "k", title2: "k")
                            PuzzleButtonStack(title1: "kn", title2: "l")
                            PuzzleButtonStack(title1: "l", title2: "ld")
                            PuzzleButtonStack(title1: "le", title2: "lf")
                            PuzzleButtonStack(title1: "lt", title2: "m")
                            PuzzleButtonStack(title1: "m", title2: "mb")
                            PuzzleButtonStack(title1: "mp", title2: "n")
                        }
                        
                        HStack (spacing: 20){
                            PuzzleButtonStack(title1: "n", title2: "nd")
                            PuzzleButtonStack(title1: "ng", title2: "nk")
                            PuzzleButtonStack(title1: "nt", title2: "o")
                            PuzzleButtonStack(title1: "o", title2: "o")
                            PuzzleButtonStack(title1: "o", title2: "oa")
                            PuzzleButtonStack(title1: "oi", title2: "old")
                            PuzzleButtonStack(title1: "oo", title2: "oo")
                            PuzzleButtonStack(title1: "or", title2: "or")
                            PuzzleButtonStack(title1: "ost", title2: "ost")
                            PuzzleButtonStack(title1: "ou", title2: "ow")
                        }
                        
                        HStack (spacing: 20){
                            PuzzleButtonStack(title1: "ow", title2: "oy")
                            PuzzleButtonStack(title1: "p", title2: "p")
                            PuzzleButtonStack(title1: "ph", title2: "ph")
                            PuzzleButtonStack(title1: "pl", title2: "pr")
                            PuzzleButtonStack(title1: "q", title2: "r")
                            PuzzleButtonStack(title1: "r", title2: "s")
                            PuzzleButtonStack(title1: "s", title2: "s")
                            PuzzleButtonStack(title1: "sc", title2: "sc")
                            PuzzleButtonStack(title1: "scr", title2: "sh")
                            PuzzleButtonStack(title1: "sh", title2: "sk")
                        }
                        
                        HStack (spacing: 20){
                            PuzzleButtonStack(title1: "sk", title2: "sl")
                            PuzzleButtonStack(title1: "sm", title2: "sn")
                            PuzzleButtonStack(title1: "sp", title2: "spl")
                            PuzzleButtonStack(title1: "spr", title2: "st")
                            PuzzleButtonStack(title1: "st", title2: "str")
                            PuzzleButtonStack(title1: "sw", title2: "t")
                            PuzzleButtonStack(title1: "t", title2: "tch")
                            PuzzleButtonStack(title1: "th", title2: "th")
                            PuzzleButtonStack(title1: "th", title2: "tr")
                            PuzzleButtonStack(title1: "u", title2: "u")
                        }
                        
                        HStack (spacing: 20){
                            PuzzleButtonStack(title1: "ur", title2: "v")
                            PuzzleButtonStack(title1: "w", title2: "wh")
                            PuzzleButtonStack(title1: "wr", title2: "x")
                            PuzzleButtonStack(title1: "x", title2: "y")
                            PuzzleButtonStack(title1: "y", title2: "y")
                            PuzzleButtonStack(title1: "ey", title2: "z")
                            
                            VStack {
                                Button (action: {
                                    
                                }, label: {
                                    Text("z")
                                        .frame(width: 150, height: 180)
                                        .font(Font.custom("Chalkboard SE", size: 50))
                                        .background( Color("lightGreen"))
                                        .foregroundColor(.black)
                                        .cornerRadius(10)
                                    
                                })
                                Spacer()
                                

                            }
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $isPresentingHomeView, content: {
            HomeIntegratedController()
        })
        .sheet(isPresented: $isPresentingCoinView, content: {
            CoinIntegratedController()
        })
    }
}

struct HomeIntegratedController:
    UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context)  -> ViewController {
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "main_vc") as! ViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

struct CoinIntegratedController:
    UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context)  -> CoinViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "coin_vc") as! CoinViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: CoinViewController, context: Context) {
    }
//    typealias UIViewControllerType = CoinViewController
}

struct PuzzleButtonStack: View {
    var title1: String
    var title2: String
    var body: some View {
        VStack (spacing: 20){

            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(title1)
                    .frame(width: 150, height: 180)
                    .font(Font.custom("Chalkboard SE", size: 50))
                    .background( Color("lightGreen"))
                    .foregroundColor(.black)
                    .cornerRadius(10)
            })
            
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(title2)
                    .frame(width: 150, height: 180)
                    .font(Font.custom("Chalkboard SE", size: 50))
                    .background(Color("lightGreen"))
                    .foregroundColor(.black)
                    .cornerRadius(10)
            })

    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
            .previewLayout(.fixed(width: 2532 / 3.0, height: 1170 / 3.0))
                        .environment(\.horizontalSizeClass, .regular)
                        .environment(\.verticalSizeClass, .compact)
    }
}
}
