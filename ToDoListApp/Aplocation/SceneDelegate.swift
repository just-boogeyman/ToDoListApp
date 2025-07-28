//
//  SceneDelegate.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 25.07.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		
		window = UIWindow(windowScene: windowScene)
		let vc = ViewController()
		window?.rootViewController = UINavigationController(rootViewController: vc)
		window?.makeKeyAndVisible()
		
		
		
	}


}

