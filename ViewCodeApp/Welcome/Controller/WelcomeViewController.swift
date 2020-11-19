//
//  WelcomeViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 18/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func loadView() {
        view = WelcomeView(delegate: self)
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WelcomeViewController: WelcomeViewDelegate {
    
}
