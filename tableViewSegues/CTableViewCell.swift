//
//  CTableViewCell.swift
//  tableViewSegues
//
//  Created by Akrish Dhakal on 9/19/16.
//  Copyright © 2016 Akrish Dhakal. All rights reserved.
//

import UIKit

class CTableViewCell: UITableViewCell {

    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var content: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(contents: String){
        
        data.text = contents
    }

    

}
