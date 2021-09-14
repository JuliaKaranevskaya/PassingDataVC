//
//  NextViewController.swift
//  PassingDataVC
//
//  Created by Юлия Караневская on 13.09.21.
//

import UIKit

class NextViewController: UIViewController {
    
    let textField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.text = "Hello"
        tf.textAlignment = .center
        return tf
    }()
    
    let button: UIButton = {
        let b = UIButton()
        b.backgroundColor = .systemTeal
        b.setTitle("Save text", for: .normal)
        b.addTarget(self, action: #selector(saveText), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
    
    @objc func saveText() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "text"), object: textField.text)
        dismiss(animated: true)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        addUI()
    }
    
    private func addUI() {
        addTextField()
        addButton()
    }
    
    private func addTextField() {
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    private func addButton() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
