//
//  ViewController.swift
//  BreakfastGallery
//
//  Created by collardgreens on 3/24/15.
//  Copyright (c) 2015 Strauss LLC. All rights reserved.
//

import UIKit

class GalleryRootViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var rootDict = [
        "SwiftSVG" : "rootToSwiftSVGSegue"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: UITableView Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.rootDict.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let returnCell = tableView.dequeueReusableCellWithIdentifier("RootGalleryCell") as? UITableViewCell {
            
            let dictAsArray = self.rootDict.keys
            let thisRootTitle = dictAsArray.array[indexPath.row]
            returnCell.textLabel!.text = thisRootTitle
            return returnCell
        }
        return UITableViewCell()
    }
    
    // MARK: UITableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let thisKey = self.rootDict.keys.array[indexPath.row]
        self.performSegueWithIdentifier(self.rootDict[thisKey], sender: self)
    }
}

