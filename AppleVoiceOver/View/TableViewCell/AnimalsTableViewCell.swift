//
//  AnimalsTableViewCell.swift
//  AppleVoiceOver
//
//  Created by Harun Demirkaya on 23.02.2023.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {

    var lblEmoji: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isAccessibilityElement = true
        label.accessibilityHint = "Emoji representation of animal"
        return label
    }()
        
    var lblName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isAccessibilityElement = true
        label.accessibilityHint = "The name of the animal"
        return label
    }()
    
    // MARK: - Initializers
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(lblEmoji)
        addSubview(lblName)
        
        NSLayoutConstraint.activate([
            lblEmoji.centerYAnchor.constraint(equalTo: centerYAnchor),
            lblEmoji.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            lblName.centerYAnchor.constraint(equalTo: centerYAnchor),
            lblName.leadingAnchor.constraint(equalTo: lblEmoji.trailingAnchor, constant: 16)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
