//
//  OptionBViewController+UI.swift
//  CodeOnly
//
//  Created by Greg Price on 02/02/2021.
//

import UIKit

extension OptionBViewController {
    
    func layoutUI() {
        
        view.addSubview(stackView)
        let stackGap: CGFloat = 32
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: stackGap),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: stackGap),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -stackGap)
        ])
        
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(confirmTextField)
        
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 44),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
