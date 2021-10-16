import UIKit

class DetailsViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    
    var detailImageView = UIImageView()
    var nameLabel = UILabel()
    
    var photo = UIImage()
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        detailImageView.image = photo
        detailImageView.isUserInteractionEnabled = false
        detailImageView.contentMode = .scaleAspectFit
        detailImageView.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.text = name
        nameLabel.isUserInteractionEnabled = false
        nameLabel.contentMode = .left
        nameLabel.textAlignment = .natural
        nameLabel.lineBreakMode = .byTruncatingTail
        nameLabel.numberOfLines = 0
        nameLabel.baselineAdjustment = .alignBaselines
        nameLabel.adjustsFontSizeToFitWidth = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = .systemFont(ofSize: 17)
        
        // add subviews
        self.view.addSubview(detailImageView)
        self.view.addSubview(nameLabel)
        
        // contraints
        detailImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        detailImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        detailImageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        detailImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        nameLabel.topAnchor.constraint(equalTo: detailImageView.bottomAnchor, constant: 16).isActive = true
        
    }
}
