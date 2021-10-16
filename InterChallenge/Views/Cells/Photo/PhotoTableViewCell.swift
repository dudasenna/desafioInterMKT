import UIKit
import Foundation

class PhotoTableViewCell: UITableViewCell {
    
    var photoImageView = UIImageView()
    var titleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        photoImageView.isUserInteractionEnabled = false
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.isUserInteractionEnabled = false
        titleLabel.contentMode = .left
        titleLabel.text = "title"
        titleLabel.textAlignment = .natural
        titleLabel.lineBreakMode = .byTruncatingTail
        titleLabel.numberOfLines = 5
        titleLabel.baselineAdjustment = .alignBaselines
        titleLabel.adjustsFontSizeToFitWidth = false
        titleLabel.font = .systemFont(ofSize: 17)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // add subviews
        self.contentView.addSubview(photoImageView)
        self.contentView.addSubview(titleLabel)
        
        // constraints
        
        photoImageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 150).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        photoImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 60).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
