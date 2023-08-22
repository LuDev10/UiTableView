//
//  TableViewDelegate.swift
//  UiTableView
//
//  Created by Luis Diaz on 21/08/2023.
//

import Foundation
import UIKit

final class TableViewDelegate:NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = allDevices[indexPath.section][indexPath.row]
        print("Cell: \(model.title)")
        
    }
    
}
