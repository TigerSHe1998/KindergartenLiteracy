//
//  ButtonWithImage.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 3/3/21.
//

import UIKit

class ButtonWithImage: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func layoutSubviews() {
//            super.layoutSubviews()
//            if imageView != nil {
//                imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
//                titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
//            }
//        }
    
    init(backgroundImage: UIImage, title: String) {
        super.init(frame: .zero)
        self.setBackgroundImage(backgroundImage, for: .normal)
        setTitle(title, for: .normal)
    }
    
    func configure() {
        layer.cornerRadius = 20
        titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        setTitleColor(.black, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
