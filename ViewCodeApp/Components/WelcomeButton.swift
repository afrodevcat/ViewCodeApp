//
//  WelcomeButton.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 19/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

class WelcomeButton: UIButton {

    enum Style {
        case main, secondary
    }
    
    var style: Style = .main
    var title: String = ""
    
    init(style: Style, title: String) {
        self.style = style
        self.title = title
        super.init(frame: .zero)
        commonInit()
    }
    
    convenience init() {
        self.init(style: .main, title: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        let titleColor: UIColor
        let bgColor: UIColor
        
        switch style {
        case .main:
            titleColor = .mainButtonText
            bgColor = .mainButton
        case .secondary:
            titleColor = .secondaryButtonText
            bgColor = .secondaryButton
            layer.borderColor = UIColor.secondaryButtonBorder.cgColor
            layer.borderWidth = 2
        }
        
        setTitleColor(titleColor, for: .normal)
        backgroundColor = bgColor
        titleLabel?.font = .button
        layer.cornerRadius = 25
        setTitle(title, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
