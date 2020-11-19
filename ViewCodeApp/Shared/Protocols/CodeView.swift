//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 18/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import Foundation

protocol CodeView {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfigurations()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfigurations()
    }
}
