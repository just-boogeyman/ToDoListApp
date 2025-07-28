//
//  ToDoListRouter.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 27.07.2025.
//

import UIKit

protocol ToDoListRouterProtocol {
	static func createModule() -> UIViewController
	func navigationToCreateTask()
}

final class ToDoListRouter: ToDoListRouterProtocol {

	weak var presenter: ToDoListPresenterProtocol?
	
	static func createModule() -> UIViewController {
		let interactor = ToDoListInteractor()
		let router = ToDoListRouter()
		let presenter = ToDoListPresenter(
			router: router,
			interactor: interactor
		)
		
		let viewController = ToDoListViewController()
		viewController.presenter = presenter
		interactor.presenter = presenter
		router.presenter = presenter
		
		return viewController
	}
	
	func navigationToCreateTask() {
		<#code#>
	}
}
