//
//  ToDoList.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 27.07.2025.
//

import UIKit

protocol ToDoListViewControllerProtocol: AnyObject {
	func showData()
}

final class ToDoListViewController: UIViewController {
	
	var presenter: ToDoListPresenterProtocol!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter.viewDidLoad()
	}
}

extension ToDoListViewController: ToDoListViewControllerProtocol {
	func showData() {
		<#code#>
	}
	
	
}
