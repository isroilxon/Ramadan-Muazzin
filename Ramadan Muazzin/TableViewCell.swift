//
//  TableViewCell.swift
//  Ramadan Muazzin
//
//  Created by mac on 16/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    let img1 = UIImageView()
    let label = UILabel()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        img1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img1)
        img1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        img1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
        img1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        img1.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.leftAnchor.constraint(equalTo: img1.rightAnchor, constant: 15).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.font = .systemFont(ofSize: 20)
                

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
