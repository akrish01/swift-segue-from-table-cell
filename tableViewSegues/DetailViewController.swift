//
//  DetailViewController.swift
//  tableViewSegues
//
//  Created by Akrish Dhakal on 9/20/16.
//  Copyright © 2016 Akrish Dhakal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    var commingData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let getData = commingData{
            message.text = getData
        }
    }
    

}
