//
//  TabBarController.swift
//  lab5
//
//  Created by Alibek Tastan on 21.03.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
            tabBar.layer.shadowColor = UIColor.white.cgColor
            tabBar.layer.shadowOpacity = 0.05
            tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
            tabBar.layer.shadowRadius = 1
        
        tabBar.backgroundColor = .white
        
        setupVCs()
    }
    
    private func setupVCs() {
        let catalog = UINavigationController(
            rootViewController: CatalogTabBarViewController()
        )
        
        let favorites = UINavigationController(
            rootViewController: FavoritesTabBarViewController()
        )
        
        let profile = UINavigationController(
            rootViewController: ProfileTabBarViewController()
        )
        
        catalog.tabBarItem.image = UIImage(systemName: "line.3.horizontal")
        favorites.tabBarItem.image = UIImage(systemName: "star.fill")
        profile.tabBarItem.image = UIImage(systemName: "person.fill")
    
        let viewControllers = [catalog, favorites, profile]
        
        setViewControllers(viewControllers, animated: true)
    }
    
}
