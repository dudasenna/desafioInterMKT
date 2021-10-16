//
//  Coordinator.swift
//  InterChallenge
//
//  Created by Eduarda Senna on 16/10/21.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

class AppCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let challengeViewController = ChallengeViewController()
        challengeViewController.coordinator = self
        self.navigationController.pushViewController(challengeViewController, animated: true)
    }
    
//    destinatoinVC.userName = userName
    //                destinatoinVC.albumId = albumId
    
    func showAlbums(with userId: Int, by name: String) {
        let albumTableViewController = AlbumTableViewController()
        albumTableViewController.userId = userId
        albumTableViewController.userName = name
        albumTableViewController.coordinator = self
        self.navigationController.pushViewController(albumTableViewController, animated: true)
    }
    
    func showPhotos(with albumId: Int, by userName: String) {
        let photoTableViewController = PhotoTableViewController()
        photoTableViewController.albumId = albumId
        photoTableViewController.userName = userName
        photoTableViewController.coordinator = self
        self.navigationController.pushViewController(photoTableViewController, animated: true)
    }
    
    func showPosts(with userId: Int, by name: String) {
        let postTableViewController = PostTableViewController()
        postTableViewController.userId = userId
        postTableViewController.userName = name
        postTableViewController.coordinator = self
        self.navigationController.pushViewController(postTableViewController, animated: true)
    }
    
    func showComments(with postId: Int, by userName: String) {
        let commentTableViewController = CommentTableViewController()
        commentTableViewController.postId = postId
        commentTableViewController.userName = userName
        commentTableViewController.coordinator = self
        self.navigationController.pushViewController(commentTableViewController, animated: true)

    }
    
    func showDetails(with photo: UIImage, by description: String) {
        let detailsViewController = DetailsViewController()
        detailsViewController.photo = photo
        detailsViewController.name = description
        detailsViewController.coordinator = self
        self.navigationController.pushViewController(detailsViewController, animated: true)
    }
}
