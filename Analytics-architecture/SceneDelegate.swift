//
//  SceneDelegate.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//

import UIKit
import Analytics_Module
import Analytics_Infrastructure_Module

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = composeModules()
        window?.makeKeyAndVisible()
    }


    // Compose modules sample usage on MVC UI-Design pattern
    func composeModules() ->  UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: .main)
            .instantiateViewController(withIdentifier: "ViewController") as? ViewController
        let engine = CloudkitAnalyticsEngine()
        vc.analyticsService = RemoteAnalyticsService(analyticsEngine: engine)
        return vc
    }

}

