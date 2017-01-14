//
//  ViewController.swift
//  BreakfastGallery
//
//  Created by collardgreens on 3/24/15.
//  Copyright (c) 2015 Strauss LLC. All rights reserved.
//

import UIKit

class GalleryRootViewController: UIViewController {
    
    enum GalleryTableItemType {
        case segue(String)
    }
    
    struct GalleryTableItem {
        let type: GalleryTableItemType
        let title: String
    }
    
    let tableData = [GalleryTableItem]()
    
}

extension GalleryRootViewController: UITableViewDataSource {
    
    // MARK: - UITableView Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let returnCell = tableView.dequeueReusableCell(withIdentifier: "RootGalleryCell") {
            let thisTableData = self.tableData[indexPath.row]
            returnCell.textLabel!.text = thisTableData.title
            return returnCell
        }
        return UITableViewCell()
    }
}

extension GalleryRootViewController: UITableViewDelegate {
    // MARK: UITableView Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let thisTableData = self.tableData[indexPath.row]
        switch thisTableData.type {
        case .segue(let identifier):
            self.performSegue(withIdentifier: identifier, sender: self)
        }
        
    }
}




