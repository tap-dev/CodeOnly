//
//  OptionAViewController+UI.swift
//  CodeOnly
//
//  Created by Greg Price on 02/02/2021.
//

import UIKit

extension OptionAViewController {
    
    func buildUI() {
        
        view.backgroundColor = .systemBackground
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let stackGap: CGFloat = 32
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: stackGap),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: stackGap),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -stackGap)
        ])
        
        emailTextField = UITextField()
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholder = "Enter your email"
        stackView.addArrangedSubview(emailTextField)
        
        passwordTextField = UITextField()
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.isSecureTextEntry = true
        stackView.addArrangedSubview(passwordTextField)
        
        confirmTextField = UITextField()
        confirmTextField.borderStyle = .roundedRect
        confirmTextField.placeholder = "Confirm your password"
        confirmTextField.isSecureTextEntry = true
        stackView.addArrangedSubview(confirmTextField)
        
        loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("LOGIN (A)", for: .normal)
        loginButton.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 44),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
