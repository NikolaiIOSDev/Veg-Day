//
//  CollectionViewCell.swift
//  Veg Day
//
//  Created by Николай Федоров on 06.03.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageCell: UIImageView!
    @IBOutlet var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCell.layer.cornerRadius=10
       
    }
    
    func setCell(prod:EatModel){
        imageCell.image=prod.image
        labelCell.text=prod.name
    }
}
