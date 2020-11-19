//
//  AppStyle.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 18/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

enum Margin {
    static let horizontal: CGFloat = 24
    static let horizontalSmall: CGFloat = 10
    static let horizontalLarge: CGFloat = 36
    static let vertical: CGFloat = 14
    static let verticalSmall: CGFloat = 8
    static let verticalLarge: CGFloat = 20
    static let verticalVeryLarge: CGFloat = 34
}

extension UIColor {
    static let mainBlack = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1.0)
    static let mediumGray = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1.0)
    static let basePurple = UIColor(red: 97/255, green: 97/255, blue: 255/255, alpha: 1.0)
    static let ultraLightGray = UIColor(red: 251/255, green: 251/255, blue: 251/255, alpha: 1.0)
    
    static let title: UIColor = .mainBlack
    static let body: UIColor = .mediumGray
    static let mainButton: UIColor = .basePurple
    static let secondaryButton: UIColor = .white
    static let mainButtonText: UIColor = .white
    static let secondaryButtonText: UIColor = .mainBlack
    static let secondaryButtonBorder: UIColor = .mainBlack
    static let view: UIColor = .ultraLightGray
}

extension UIFont {
    static let title: UIFont = .boldSystemFont(ofSize: 28)
    static let body: UIFont = .systemFont(ofSize: 15)
    static let button: UIFont = .systemFont(ofSize: 15)
}
