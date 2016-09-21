//
//  ViewController.swift
//  tableViewSegues
//
//  Created by Akrish Dhakal on 9/19/16.
//  Copyright © 2016 Akrish Dhakal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    let content = ["A","B","C"]
    let desc = ["Apple","BAll","Cat"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell{
        if let cell = tableView.dequeueReusableCellWithIdentifier("cell") as? CTableViewCell{
            cell.configureCell(content[indexPath.row])
            return cell
        } else{
            return CTableViewCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return content.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //print(indexPath.row)
        
        let viewController = storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
       viewController.commingData = desc[indexPath.row]
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    


}

