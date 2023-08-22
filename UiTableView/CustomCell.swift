//
//  CustomCell.swift
//  UiTableView
//
//  Created by Luis Diaz on 21/08/2023.
//

import UIKit

class CustomCell: UITableViewCell {
    private let deviceImagenView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let deviceNameLabel: UILabel  = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(deviceImagenView)
        addSubview(deviceNameLabel)
        
        NSLayoutConstraint.activate([
        
            deviceImagenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            deviceImagenView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            deviceImagenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            deviceImagenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            deviceImagenView.widthAnchor.constraint(equalToConstant: 40),            
            deviceNameLabel.leadingAnchor.constraint(equalTo: deviceImagenView.trailingAnchor, constant: 40),
            deviceNameLabel.centerYAnchor.constraint(equalTo: deviceImagenView.centerYAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(model: Device) {
        deviceImagenView.image = UIImage(systemName: model.imageName)
        deviceNameLabel.text = model.title
        
    }

}
