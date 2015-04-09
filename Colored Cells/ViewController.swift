//
//  ViewController.swift
//  Colored Cells
//
//  Created by mitchell hudson on 4/8/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var numberOfRows = 100
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = "Cell \(indexPath.row)"
        
        let n = 1.0 / CGFloat(numberOfRows)
        let hue = CGFloat(indexPath.row) * n
        let color = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
        cell.backgroundColor = color
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

