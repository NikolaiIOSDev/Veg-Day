//
//  AddititesTableViewCell.swift
//  Veg Day
//
//  Created by Николай Федоров on 09.03.2022.
//

import UIKit

class AdditiesTableViewCell: UITableViewCell {
    @IBOutlet var nameNumber: UILabel!
    @IBOutlet var nameAddities: UILabel!
    @IBOutlet var imageCitizen: UIImageView!
    @IBOutlet var imageCitizenTwo: UIImageView!
    @IBOutlet var imageCitizenThree: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setAddities(e:AdditiesModel){
        nameNumber.text=e.nameNumber
        nameAddities.text=e.name
        imageCitizen.image=e.imageCitizen
        imageCitizenTwo.image=e.imageCitizenTwo
        imageCitizenThree.image=e.imageCitizenThree
        
    }
}
