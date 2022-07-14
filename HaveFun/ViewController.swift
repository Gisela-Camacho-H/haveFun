//
//  ViewController.swift
//  HaveFun
//
//  Created by GiselaCamacho on 14/07/22.
//

import UIKit
// MARK: ViewController class
final class ViewController: UIViewController {
    
  // MARK: - Properties
    private weak var userTextField: UITextField?
    private weak var passwordTextField: UITextField?
    
  // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initializeButtons()
        setUpConstrains()
    }
    
  // MARK: - Private methods
    private func initializeButtons() {
      let userTextField = UITextField(frame: .zero)
        userTextField.backgroundColor = .blue
      userTextField.isUserInteractionEnabled = true
      userTextField.translatesAutoresizingMaskIntoConstraints = false
      userTextField.layer.cornerRadius = 7
      userTextField.placeholder = "User"
      userTextField.clearButtonMode = UITextField.ViewMode.whileEditing
      userTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 20))
      userTextField.leftViewMode = UITextField.ViewMode.always
      view.addSubview(userTextField)
      self.userTextField = userTextField
      let passwordTextField = UITextField(frame: .zero)
        passwordTextField.backgroundColor = .blue
      passwordTextField.isUserInteractionEnabled = true
      passwordTextField.translatesAutoresizingMaskIntoConstraints = false
      passwordTextField.layer.cornerRadius = 7
      passwordTextField.placeholder = "Password"
      passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
      passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 20))
      passwordTextField.leftViewMode = UITextField.ViewMode.always
      view.addSubview(passwordTextField)
      self.passwordTextField = passwordTextField
    }
    private func setUpConstrains() {
      guard let userTextField = userTextField, let passwordTextField = passwordTextField else { return }
      NSLayoutConstraint.activate([
        userTextField.heightAnchor.constraint(equalToConstant: 50),
        passwordTextField.heightAnchor.constraint(equalToConstant: 50),
        userTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height/3),
        passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 40),
        userTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        userTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
        passwordTextField.centerXAnchor.constraint(
              equalTo: view.centerXAnchor, constant: 0)
      ])
    }
}
