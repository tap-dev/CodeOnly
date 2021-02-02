//
//  SceneDelegate.swift
//  CodeOnly
//
//  Created by Greg Price on 02/02/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        let optionA = OptionAViewController()
        optionA.tabBarItem = .chunky(title: nil, icon: "1.circle.fill", tag: 0)
        
        let optionB = OptionBViewController()
        optionB.tabBarItem = .chunky(title: nil, icon: "2.circle.fill", tag: 1)
        
        let optionC = OptionCViewController()
        optionC.tabBarItem = .chunky(title: nil, icon: "3.circle.fill", tag: 2)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [optionA, optionB, optionC]
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        self.window!.rootViewController = tabBarController
        self.window!.makeKeyAndVisible()
    }
}

