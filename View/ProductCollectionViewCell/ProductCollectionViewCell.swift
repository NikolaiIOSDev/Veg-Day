//
//  ProductCollectionViewCell.swift
//  Veg Day
//
//  Created by Николай Федоров on 16.05.2022.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var prodName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        prodImage.layer.cornerRadius=10
        
    }

    func setCell(prod:ProductModel){
        prodImage.image=prod.nameImage
        prodName.text=prod.nameProduct
    }
    
}
