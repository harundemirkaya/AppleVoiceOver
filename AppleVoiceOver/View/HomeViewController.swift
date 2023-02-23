//
//  ViewController.swift
//  AppleVoiceOver
//
//  Created by Harun Demirkaya on 23.02.2023.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: -Define
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.allowsSelection = false
        return tableView
    }()
    
    var animals: [Animal] = [Animal(icon: "\u{1F436}", name: "Dog"), Animal(icon: "\u{1F431}", name: "Cat"),
                            Animal(icon: "\u{1F40D}", name: "Snake"), Animal(icon: "\u{1F439}", name: "Hamster"),
                            Animal(icon: "\u{1F43C}", name: "Panda")]
    
    // MARK: -ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(AnimalsTableViewCell.self, forCellReuseIdentifier: "AnimalsCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsCell", for: indexPath) as! AnimalsTableViewCell
        cell.lblEmoji.text = animals[indexPath.row].icon
        cell.lblName.text = animals[indexPath.row].name
        cell.lblName.accessibilityHint = animals[indexPath.row].name
        return cell
    }
    
    // MARK: -TableView Frame
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

