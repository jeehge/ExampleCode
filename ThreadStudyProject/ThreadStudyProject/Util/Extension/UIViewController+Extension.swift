//
//  UIViewController+Extension.swift
//  ThreadStudyProject
//
//  Created by JH on 22/11/2019.
//  Copyright © 2019 JH. All rights reserved.
//

import UIKit

protocol ViewControllerFromStoryBoard{}

extension ViewControllerFromStoryBoard where Self: UIViewController {
    static func viewController(from storyboardName: String) -> Self {
        guard let viewController: Self = UIStoryboard(name: storyboardName, bundle: nil)
            .instantiateViewController(withIdentifier: String(describing: Self.self)) as? Self
            else { return Self() }
        return viewController
    }
}
