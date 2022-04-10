//
//  SceneDelegate.swift
//  LoanMoney
//
//  Created by Nick Sagan on 18.03.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

//        if (UserDefaults.standard.bool(forKey: "notFirstLaunch") == false) {
//            UserDefaults.standard.set(true, forKey: "notFirstLaunch")
//            window?.rootViewController = OnboardVC()
//        } else {
//            let nc = UINavigationController(rootViewController: LoansVC())
//            nc.navigationBar.backgroundColor = UIColor.white.withAlphaComponent(0)
//            nc.navigationBar.tintColor = .white
//            window?.rootViewController = nc
//        }
        
        let nc = UINavigationController(rootViewController: TabBarVC())
        nc.navigationBar.backgroundColor = UIColor.white.withAlphaComponent(0)
        nc.navigationBar.tintColor = .white
        window?.rootViewController = nc
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
    }
}

