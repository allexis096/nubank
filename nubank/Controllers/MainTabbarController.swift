//
//  ViewController.swift
//  nubank
//
//  Created by allexis figueiredo on 09/10/22.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let bankVC = UINavigationController(rootViewController: BankViewController())
        let shoppingVC = UINavigationController(rootViewController: ShoppingViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "arrow.up.arrow.down")
        bankVC.tabBarItem.image = UIImage(systemName: "dollarsign")
        shoppingVC.tabBarItem.image = UIImage(systemName: "bag")
        
        setViewControllers([homeVC, bankVC, shoppingVC], animated: true)
        
        tabBar.tintColor = UIColor(red: 130/255, green: 10/255, blue: 209/255, alpha: 1)
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor(red: 211/255, green: 217/255, blue: 227/255, alpha: 1).cgColor
    }
}

