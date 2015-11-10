//
//  ViewController.swift
//  BreakfastGallery
//
//  Created by collardgreens on 3/24/15.
//  Copyright (c) 2015 Strauss LLC. All rights reserved.
//

import UIKit

class GalleryRootViewController: UIViewController, UITableViewDelegate {
    
    enum GalleryTableItemType {
        case Segue(String)
    }
    
    struct GalleryTableItem {
        let type: GalleryTableItemType
        let title: String
    }
    
    let tableData = [
        GalleryTableItem(type: .Segue("rootToSwiftSVGSegue"), title: "SwiftSVG")
    ]
    
}

extension GalleryRootViewController: UITableViewDataSource {
    
    // MARK: - UITableView Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let returnCell = tableView.dequeueReusableCellWithIdentifier("RootGalleryCell") {
            let thisTableData = self.tableData[indexPath.row]
            returnCell.textLabel!.text = thisTableData.title
            return returnCell
        }
        return UITableViewCell()
    }
}

extension GalleryRootViewController: UITableViewDelegate {
    // MARK: UITableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let thisTableData = self.tableData[indexPath.row]
        switch thisTableData.type {
        case .Segue(let identifier):
            self.performSegueWithIdentifier(identifier, sender: self)
        }
        
    }
}




