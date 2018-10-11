//
//  ViewController.swift
//  mg2252_p2
//
//  Created by Medhavi Gandhi on 10/8/18.
//  Copyright © 2018 Medhavi Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listItem: UILabel!
    var addButton: UIButton!
    var listAmount: UILabel!
    var itemInput: UITextField!
    var amountInput: UITextField!
    var listView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        view.backgroundColor = .yellow
        listItem = UILabel()
        listItem.translatesAutoresizingMaskIntoConstraints = false
        listItem.text = "Item"
        listItem.textColor = .black
        view.addSubview(listItem)
        
        
        listAmount = UILabel()
        listAmount.translatesAutoresizingMaskIntoConstraints = false
        listAmount.text = "Amount"
        listAmount.textColor = .black
        view.addSubview(listAmount)
      
      itemInput = UITextField()
      itemInput.translatesAutoresizingMaskIntoConstraints = false
      itemInput.backgroundColor = .white
      itemInput.textColor = .black
      view.addSubview(itemInput)
      
      amountInput = UITextField()
      amountInput.translatesAutoresizingMaskIntoConstraints = false
      amountInput.backgroundColor = .white
      amountInput.textColor = .black
      view.addSubview(amountInput)
      
      addButton = UIButton()
      addButton.translatesAutoresizingMaskIntoConstraints = false
      addButton.backgroundColor = .white
      addButton.setTitle("ADD", for: .normal)
      addButton.setTitleColor(.black, for: .normal)
      addButton.addTarget(self, action: #selector(addItem), for: .touchUpInside)
      view.addSubview(addButton)
      
      listView = UITextView()
      listView.translatesAutoresizingMaskIntoConstraints = false
      listView.backgroundColor = .white
      listView.text = ""
      listView.font = UIFont.systemFont(ofSize: 18, weight: .bold)
      
      view.addSubview(listView)
      
        
        
        
        
        setupConstraints()
        
    }
    func setupConstraints() {
    
     
        NSLayoutConstraint.activate([
            listItem.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            listItem.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            listItem.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            listItem.heightAnchor.constraint(equalToConstant: 24)
            ])
        NSLayoutConstraint.activate([
            listAmount.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 52),
            listAmount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            listItem.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            listItem.heightAnchor.constraint(equalToConstant: 24)
            ])
      NSLayoutConstraint.activate([
         itemInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
         itemInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
         itemInput.trailingAnchor.constraint(equalTo: view.centerXAnchor),
         itemInput.heightAnchor.constraint(equalToConstant: 24)
         
         ])
      NSLayoutConstraint.activate([
         amountInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
         amountInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 101),
         amountInput.trailingAnchor.constraint(equalTo: view.centerXAnchor),
         amountInput.heightAnchor.constraint(equalToConstant: 24)
         
         ])
      NSLayoutConstraint.activate([
         addButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
         addButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
         addButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: 60),
         addButton.heightAnchor.constraint(equalToConstant: 48),
        /// addButton.widthAnchor.constraint(equalToConstant:0)
         
         ])
      NSLayoutConstraint.activate([
         listView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 50),
         listView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
         listView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
         listView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
         
         ])
        
    }

   @objc func addItem() {
      if let itemOutput = itemInput.text, let amountOutput = amountInput.text {
          listView.text.append(contentsOf: "\(itemOutput)  :  \(amountOutput) \n")
      }
      

      else {
       listView.text = listView.text
      }
       itemInput.text = ""
       amountInput.text = ""
     
   }


}

