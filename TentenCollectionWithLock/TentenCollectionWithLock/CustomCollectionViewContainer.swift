import UIKit
import SwiftUI

class CustomCollectionViewContainer: UIView {
    private let collectionViewController: CustomCollectionViewController
    private let containerView = UIView()
    private let lockView = UIView()
    private let backgroundImageView = UIImageView(image: UIImage(named: "bg_recorder_lock"))
    
    init() {
        self.collectionViewController = CustomCollectionViewController()
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        // conatinerView
        containerView.layer.borderWidth = 0.5
        containerView.layer.borderColor = UIColor.red.cgColor

        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // lockView
        containerView.addSubview(lockView)
        lockView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lockView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
//            lockView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
            lockView.topAnchor.constraint(equalTo: containerView.topAnchor),
            lockView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        lockView.layer.borderWidth = 2
        lockView.layer.borderColor = UIColor.blue.cgColor
        
        lockView.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: lockView.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: lockView.trailingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: lockView.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: lockView.bottomAnchor)
        ])
        
        // collectionView
        let collectionView = collectionViewController.view!
        containerView.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            collectionView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
