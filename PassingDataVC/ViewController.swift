//
//  ViewController.swift
//  PassingDataVC
//
//  Created by Юлия Караневская on 13.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let l = UILabel()
        l.backgroundColor = .white
        l.text = "Hello"
        l.textAlignment = .center
        return l
    }()
    
    let button: UIButton = {
        let b = UIButton()
        b.backgroundColor = .systemBlue
        b.setTitle("Go to the next page", for: .normal)
        b.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
    
    @objc func nextPage() {
       
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        addUI()
    }
    
    private func addUI() {
        addLabel()
        addButton()
    }
    
    private func addLabel() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    private func addButton() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }


}

