import UIKit

protocol UserTableViewCellDelegate: AnyObject {
    func didTapAlbums(with userId: Int, by name: String)
    func didTapPosts(with userId: Int, by name: String)
}

class UserTableViewCell: UITableViewCell {
    
    var initialsLabel = UILabel()
    var nameLabel = UILabel()
    var userNameLabel = UILabel()
    var emailLabel = UILabel()
    var phoneLabel = UILabel()
    
    var initialsView = UIView()
    var separatorView = UIView()
    var stackView = UIStackView()
    
    var albumsButton = UIButton()
    var postsButton = UIButton()
    
    var id: Int = 0
    var delegate: UserTableViewCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentMode = .scaleToFill
        self.contentMode = .center
        self.translatesAutoresizingMaskIntoConstraints = false
        
        userNameLabel.isUserInteractionEnabled = false
        userNameLabel.contentMode = .left
        userNameLabel.text = "username"
        userNameLabel.textAlignment = .natural
        userNameLabel.lineBreakMode = .byTruncatingTail
        userNameLabel.numberOfLines = 0
        userNameLabel.baselineAdjustment = .alignBaselines
        userNameLabel.adjustsFontSizeToFitWidth = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.font = .systemFont(ofSize: 17)
        
        emailLabel.isUserInteractionEnabled = false
        emailLabel.contentMode = .left
        emailLabel.text = "email"
        emailLabel.textAlignment = .natural
        emailLabel.lineBreakMode = .byTruncatingTail
        emailLabel.numberOfLines = 0
        emailLabel.baselineAdjustment = .alignBaselines
        emailLabel.adjustsFontSizeToFitWidth = false
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.font = .systemFont(ofSize: 17)
        
        phoneLabel.isUserInteractionEnabled = false
        phoneLabel.contentMode = .left
        phoneLabel.text = "phone"
        phoneLabel.textAlignment = .natural
        phoneLabel.lineBreakMode = .byTruncatingTail
        phoneLabel.numberOfLines = 0
        phoneLabel.baselineAdjustment = .alignBaselines
        phoneLabel.adjustsFontSizeToFitWidth = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.font = .systemFont(ofSize: 17)
        
        nameLabel.isUserInteractionEnabled = false
        nameLabel.contentMode = .center
        nameLabel.text = "name"
        nameLabel.textAlignment = .center
        nameLabel.lineBreakMode = .byTruncatingTail
        nameLabel.numberOfLines = 0
        nameLabel.baselineAdjustment = .alignBaselines
        nameLabel.adjustsFontSizeToFitWidth = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = .systemFont(ofSize: 17)
        
        separatorView.contentMode = .scaleToFill
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = UIColor(white: 0.66666666666666663, alpha: 1)
        
        initialsView.contentMode = .scaleToFill
        initialsView.translatesAutoresizingMaskIntoConstraints = false
        initialsView.backgroundColor = .systemYellow
        
        initialsLabel.isUserInteractionEnabled = false
        initialsLabel.contentMode = .center
        initialsLabel.text = "initials"
        initialsLabel.textAlignment = .natural
        initialsLabel.lineBreakMode = .byTruncatingTail
        initialsLabel.numberOfLines = 0
        initialsLabel.baselineAdjustment = .alignBaselines
        initialsLabel.adjustsFontSizeToFitWidth = false
        initialsLabel.translatesAutoresizingMaskIntoConstraints = false
        initialsLabel.font = .systemFont(ofSize: 17)
        
        stackView.contentMode = .scaleToFill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        albumsButton.contentMode = .scaleToFill
        albumsButton.contentHorizontalAlignment = .center
        albumsButton.contentVerticalAlignment = .center
        albumsButton.titleLabel?.lineBreakMode = .byTruncatingMiddle
        albumsButton.setTitle("ÁLBUNS", for: .normal)
        albumsButton.setTitleColor(.systemOrange, for: .normal)
        albumsButton.translatesAutoresizingMaskIntoConstraints = false
        albumsButton.addTarget(self, action: #selector(albumsAction(sender:)), for: .touchUpInside)
        
        postsButton.contentMode = .scaleToFill
        postsButton.contentHorizontalAlignment = .center
        postsButton.contentVerticalAlignment = .center
        postsButton.titleLabel?.lineBreakMode = .byTruncatingMiddle
        postsButton.setTitle("POSTAGENS", for: .normal)
        postsButton.setTitleColor(.systemOrange, for: .normal)
        postsButton.translatesAutoresizingMaskIntoConstraints = false
        postsButton.addTarget(self, action: #selector(postsAction(sender:)), for: .touchUpInside)
        
        // add subviews
        self.contentView.addSubview(userNameLabel)
        self.contentView.addSubview(emailLabel)
        self.contentView.addSubview(phoneLabel)
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(initialsView)
        self.contentView.addSubview(separatorView)
        self.contentView.addSubview(stackView)
        initialsView.addSubview(initialsLabel)
        stackView.addArrangedSubview(albumsButton)
        stackView.addArrangedSubview(postsButton)
        
        // constraints
        initialsView.widthAnchor.constraint(equalToConstant: 88).isActive = true
        initialsView.heightAnchor.constraint(equalToConstant: 88).isActive = true
        initialsView.trailingAnchor.constraint(equalTo: initialsLabel.trailingAnchor).isActive = true
        initialsLabel.topAnchor.constraint(equalTo: initialsView.topAnchor).isActive = true
        initialsView.bottomAnchor.constraint(equalTo: initialsLabel.bottomAnchor).isActive = true
        initialsLabel.leadingAnchor.constraint(equalTo: initialsView.leadingAnchor, constant: 32).isActive = true
        initialsView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        initialsView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        nameLabel.topAnchor.constraint(equalTo: initialsView.bottomAnchor, constant: 16).isActive = true
        separatorView.widthAnchor.constraint(equalToConstant: 2).isActive = true
        separatorView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        separatorView.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 32).isActive = true
        separatorView.leadingAnchor.constraint(equalTo: initialsView.trailingAnchor, constant: 32).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        userNameLabel.leadingAnchor.constraint(equalTo: separatorView.trailingAnchor, constant: 16).isActive = true
        userNameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        emailLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 24).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true //check
        emailLabel.leadingAnchor.constraint(equalTo: separatorView.trailingAnchor, constant: 16).isActive = true
        phoneLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 24).isActive = true
        phoneLabel.leadingAnchor.constraint(equalTo: separatorView.trailingAnchor, constant: 16).isActive = true
        phoneLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        stackView.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 64).isActive = true
        stackView.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 24).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @objc func albumsAction(sender: UIButton!) {
        delegate?.didTapAlbums(with: id, by: nameLabel.text ?? "")
    }
    
    @objc func postsAction(sender: UIButton!) {
        delegate?.didTapPosts(with: id, by: nameLabel.text ?? "")
    }
}
