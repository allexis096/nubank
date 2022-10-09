//
//  HomeViewController.swift
//  nubank
//
//  Created by allexis figueiredo on 09/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.purple
        
        return view
    }()
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "avatar")
        imageView.layer.cornerRadius = 25
        
        return imageView
    }()
    
    let eyeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "eye")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        return imageView
    }()
    
    let questionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "questionmark.circle")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        return imageView
    }()
    
    let personImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person.badge.plus")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        return imageView
    }()
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá, Allexis"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(headerView)
        
        headerView.addSubview(avatarImageView)
        headerView.addSubview(helloLabel)
        headerView.addSubview(eyeImageView)
        headerView.addSubview(questionImageView)
        headerView.addSubview(personImageView)
        
        configureConstraints()
    }

    private func configureConstraints() {
        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 180)
        ]
        
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 25),
            avatarImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let eyeImageViewConstraints = [
            eyeImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -110),
            eyeImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: -10),
            eyeImageView.widthAnchor.constraint(equalToConstant: 30),
            eyeImageView.heightAnchor.constraint(equalToConstant: 25)
        ]
        
        let questionImageViewConstraints = [
            questionImageView.leadingAnchor.constraint(equalTo: eyeImageView.trailingAnchor, constant: 20),
            questionImageView.centerYAnchor.constraint(equalTo: eyeImageView.centerYAnchor),
            questionImageView.widthAnchor.constraint(equalToConstant: 25),
            questionImageView.heightAnchor.constraint(equalToConstant: 25)
        ]
        
        let personImageViewConstraints = [
            personImageView.leadingAnchor.constraint(equalTo: questionImageView.trailingAnchor, constant: 20),
            personImageView.centerYAnchor.constraint(equalTo: questionImageView.centerYAnchor),
            personImageView.widthAnchor.constraint(equalToConstant: 25),
            personImageView.heightAnchor.constraint(equalToConstant: 25)
        ]
        
        let helloLabelConstraints = [
            helloLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 25),
            helloLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -30)
        ]
        
        NSLayoutConstraint.activate(headerViewConstraints)
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(eyeImageViewConstraints)
        NSLayoutConstraint.activate(questionImageViewConstraints)
        NSLayoutConstraint.activate(personImageViewConstraints)
        NSLayoutConstraint.activate(helloLabelConstraints)
    }

}
