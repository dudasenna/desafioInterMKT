import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    var albumNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        albumNameLabel.contentMode = .scaleToFill
        albumNameLabel.translatesAutoresizingMaskIntoConstraints = false
        albumNameLabel.contentMode = .left
        albumNameLabel.isUserInteractionEnabled = false
        albumNameLabel.textAlignment = .natural
        albumNameLabel.lineBreakMode = .byTruncatingTail
        albumNameLabel.numberOfLines = 0
        albumNameLabel.baselineAdjustment = .alignBaselines
        albumNameLabel.adjustsFontSizeToFitWidth = false
        albumNameLabel.font = .systemFont(ofSize: 17)
        
        // add subviews
        self.contentView.addSubview(albumNameLabel)
        
        // constraints
        albumNameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        albumNameLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16).isActive = true
        albumNameLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        albumNameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
