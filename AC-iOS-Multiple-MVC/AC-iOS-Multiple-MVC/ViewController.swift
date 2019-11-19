//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
//    var animals = ZooAnimal.zooAnimals
    
    var classification = [[ZooAnimal]](){
        didSet{
            tableView.reloadData()
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.delegate = self
        classification = ZooAnimal.getAnimals()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
//        segue.destination.
       
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classification[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {
            fatalError("empty location")
        }
        let zooAnimal = classification[indexPath.section][indexPath.row]
        cell.configureCell(for: zooAnimal)
        
        return cell
       
        
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return classification[section].first?.classification
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return classification.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 150
        
    }
    
}
