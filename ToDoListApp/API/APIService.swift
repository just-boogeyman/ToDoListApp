//
//  APIService.swift
//  ToDoListApp
//
//  Created by Ярослав Кочкин on 27.07.2025.
//

import Foundation

final class APIService {
	func getToDos(complition: @escaping (String) -> Void) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
			complition("")
		}
	}
}
