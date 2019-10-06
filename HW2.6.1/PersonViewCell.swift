//
//  PersonViewCell.swift
//  HW2.6.2
//
//  Created by Artem Grebenkin on 10/6/19.
//  Copyright © 2019 Artem Grebenkin. All rights reserved.
//

import UIKit

class PersonViewCell: UITableViewCell {

    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var contactLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
