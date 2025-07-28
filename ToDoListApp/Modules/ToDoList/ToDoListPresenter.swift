//
//  ToDoListPresenter.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 27.07.2025.
//

import Foundation

protocol ToDoListPresenterProtocol: AnyObject {
	func viewDidLoad()
	func didFetchData(_ data: String)
}

final class ToDoListPresenter {
	weak var view: ToDoListViewControllerProtocol?
	let router: ToDoListRouterProtocol!
	let interactor: ToDoListInteractorProtocol!
	
	init(
		router: ToDoListRouterProtocol,
		interactor: ToDoListInteractorProtocol
	) {
		self.router = router
		self.interactor = interactor
	}
	
}

extension ToDoListPresenter: ToDoListPresenterProtocol {
	func viewDidLoad() {
		interactor.fetchData()
	}
	
	func didFetchData(_ data: String) {
		view?.showData()
	}
	
	
}
