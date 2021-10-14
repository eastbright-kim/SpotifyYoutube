//
//  TabBarViewController.swift
//  SpotifyYoutube
//
//  Created by 김동환 on 2021/09/24.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
//        UITabBar.appearance().barTintColor = .systemBackground
//        UITabBar.appearance().backgroundColor = .systemGray
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
            viewControllers = [
                createNavController(for: HomeViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
                createNavController(for: SearchViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
                createNavController(for: LibraryViewController(), title: NSLocalizedString("Library", comment: ""), image: UIImage(systemName: "music.note.list")!)
            ]
        }
    
}
