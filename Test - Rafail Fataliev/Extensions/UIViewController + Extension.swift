//
//  UIViewController + Extension.swift
//  Test - Rafail Fataliev
//
//  Created by Рафаил Фаталиев on 08.06.2022.
//

import UIKit

extension UIViewController {
    func createCustomButton(selector: Selector) -> UIBarButtonItem {
        
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
    }
}
