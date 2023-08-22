import UIKit

struct Device {
    let title: String
    let imageName: String
}

class ViewController: UIViewController {
    private var dataSource: TableViewDataSource?
    private var delegate: TableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.dataSource = TableViewDataSource(dataSource: allDevices)
        self.delegate = TableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        view = tableView
        
    }
    
}

