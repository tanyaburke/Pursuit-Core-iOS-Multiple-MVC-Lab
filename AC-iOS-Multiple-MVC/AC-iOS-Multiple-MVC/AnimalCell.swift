//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tanya Burke on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit


class AnimalCell: UITableViewCell {

    @IBOutlet weak var animalImageView: UIImageView?
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    
    
    
    
    func configureCell(for zooAnimal: ZooAnimal){
        animalImageView?.image = UIImage(named: zooAnimal.imageNumber.description )
        animalNameLabel.text = zooAnimal.name
        originLabel.text = zooAnimal.origin
        
        
    }
}
