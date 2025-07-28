//
//  ToDoListInteractor.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 27.07.2025.
//

import Foundation

protocol ToDoListInteractorProtocol {
	func fetchData()
}

final class ToDoListInteractor {
	var presenter: ToDoListPresenterProtocol!
}

extension ToDoListInteractor: ToDoListInteractorProtocol {
	func fetchData() {
		// выполнение бизнес логики
		let data = "Привер данных"
		presenter.didFetchData(data)
	}
}
