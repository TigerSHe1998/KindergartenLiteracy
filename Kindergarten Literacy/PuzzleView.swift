//
//  PuzzleView.swift
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
                            PuzzleButtonStack(title1: "b", title2: "b")
                            PuzzleButtonStack(title1: "c", title2: "d")
                            PuzzleButtonStack(title1: "d", title2: "e")
                            PuzzleButtonStack(title1: "f", title2: "f")
                            PuzzleButtonStack(title1: "g", title2: "g")
                            PuzzleButtonStack(title1: "h", title2: "i")
                            PuzzleButtonStack(title1: "i", title2: "j")
                            PuzzleButtonStack(title1: "k", title2: "k")
                            PuzzleButtonStack(title1: "l", title2: "l")
                        }
                        
                        HStack (spacing: 20) {
                            PuzzleButtonStack(title1: "m", title2: "m")
                            PuzzleButtonStack(title1: "n", title2: "n")
                            PuzzleButtonStack(title1: "o", title2: "p")
                            PuzzleButtonStack(title1: "p", title2: "q")
                            PuzzleButtonStack(title1: "r", title2: "r")
                            PuzzleButtonStack(title1: "s", title2: "s")
                            PuzzleButtonStack(title1: "t", title2: "t")
                            PuzzleButtonStack(title1: "u", title2: "v")
                            PuzzleButtonStack(title1: "w", title2: "x")
                            PuzzleButtonStack(title1: "x", title2: "y")
                        }
                        
                        HStack (spacing: 20) {
                            PuzzleButtonStack(title1: "z", title2: "z")
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
}
