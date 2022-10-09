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
        
        tabBar.tintColor = Colors.purple
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
        view.backgroundColor = Colors.gray
        tabBar.addSubview(view)
    }
}

