import Foundation
import UIKit

let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac Mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]
let work = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]
let allDevices = [house, work]

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    private let dataSource: [[Device]]
    
    init(dataSource: [[Device]]) {
        self.dataSource = dataSource
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        let model = dataSource[indexPath.section][indexPath.row]
        cell.configure(model: model)
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Device House"
        } else {
            return "Device Work"
        }
    }
    
}
