//
//  ThirdTabBarViewController.swift
//  lab5
//
//  Created by Alibek Tastan on 21.03.2024.
//

import UIKit

class ProfileTabBarViewController: UIViewController {

    private lazy var exitButton: UIButton = {
      let button = UIButton()
        
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(exitButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Выйти", for: .normal)
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        view.addSubview(exitButton)
        NSLayoutConstraint.activate([
            exitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exitButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            exitButton.widthAnchor.constraint(equalToConstant: 120),
            exitButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    @objc
    private func exitButtonDidTap() {
        UIHelper.setRoot(AuthViewController())
    }

}
