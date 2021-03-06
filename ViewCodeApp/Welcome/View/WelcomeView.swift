//
//  WelcomeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 18/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

protocol WelcomeViewDelegate: AnyObject {
    func loginButtonTapped(withPhone: String)
    func signUpButtonTapped()
}

class WelcomeView: UIView, CodeView {
    
    // MARK: - Propertties
    weak var delegate: WelcomeViewDelegate?

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.keyboardDismissMode = .interactive
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imageViewMain: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "home"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labelTitle: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Localization.welcome
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .title
        label.font = .title
        return label
    }()
    
    let labelBody: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Localization.main
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .body
        label.font = .body
        return label
    }()
    
    let textFieldPhone: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = Localization.phone
        textField.borderStyle = .roundedRect
        textField.keyboardType = .phonePad
        textField.textAlignment = .center
        return textField
    }()
    
    let stackViewButtons: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = Margin.horizontalSmall
        return stackView
    }()
    
    let buttonLogin = WelcomeButton(style: .main, title: Localization.loginButton)
    let buttonSignUp = WelcomeButton(style: .secondary, title: Localization.signupButton)
    
    // MARK: - Constructors
    init(delegate: WelcomeViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods
    func setupComponents() {
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageViewMain)
        contentView.addSubview(labelTitle)
        contentView.addSubview(labelBody)
        contentView.addSubview(textFieldPhone)
        contentView.addSubview(stackViewButtons)
        stackViewButtons.addArrangedSubview(buttonLogin)
        stackViewButtons.addArrangedSubview(buttonSignUp)
    }
    
    func setupConstraints() {
        //Layout Anchors
        //ScrollView
        scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        //ContentView
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        let contentViewWidthConstraint = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        contentViewWidthConstraint.priority = .defaultLow
        contentViewWidthConstraint.isActive = true
        
        //ImageViewMain
        imageViewMain.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Margin.verticalVeryLarge).isActive = true
        imageViewMain.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Margin.horizontal).isActive = true
        imageViewMain.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Margin.horizontal).isActive = true
        imageViewMain.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        
        //LabelTitle
        labelTitle.topAnchor.constraint(equalTo: imageViewMain.bottomAnchor, constant: Margin.verticalVeryLarge).isActive = true
        labelTitle.leadingAnchor.constraint(equalTo: imageViewMain.leadingAnchor).isActive = true
        labelTitle.trailingAnchor.constraint(equalTo: imageViewMain.trailingAnchor).isActive = true
        
        //LabelBody
        labelBody.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: Margin.verticalSmall).isActive = true
        labelBody.leadingAnchor.constraint(equalTo: labelTitle.leadingAnchor).isActive = true
        labelBody.trailingAnchor.constraint(equalTo: labelTitle.trailingAnchor).isActive = true
        
        //TextFieldPhone
        textFieldPhone.topAnchor.constraint(equalTo: labelBody.bottomAnchor, constant: Margin.verticalLarge).isActive = true
        textFieldPhone.leadingAnchor.constraint(equalTo: labelBody.leadingAnchor).isActive = true
        textFieldPhone.trailingAnchor.constraint(equalTo: labelBody.trailingAnchor).isActive = true

        //StackViewButtons
        stackViewButtons.topAnchor.constraint(equalTo: textFieldPhone.bottomAnchor, constant: Margin.vertical).isActive = true
        stackViewButtons.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        //ButtonLogin
        buttonLogin.widthAnchor.constraint(equalToConstant: 120).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //ButtonSignUp
        buttonSignUp.heightAnchor.constraint(equalTo: buttonLogin.heightAnchor).isActive = true
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .view
        buttonLogin.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonSignUp.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped(sender: UIButton) {
        switch sender {
        case buttonLogin:
            delegate?.loginButtonTapped(withPhone: textFieldPhone.text!)
        case buttonSignUp:
            delegate?.signUpButtonTapped()
        default:
            break
        }
    }

}

