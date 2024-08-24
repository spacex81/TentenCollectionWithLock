import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let viewModel = ContentViewModel.shared
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let longPressGestureRecognizer = UILongPressGestureRecognizer()
    
    private let lockDistance: CGFloat = 100
    private var longPressGestureBeganPoint = CGPoint.zero
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
        setupGestureRecognizer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String) {
        label.text = text
    }
    
    private func setupGestureRecognizer() {
        longPressGestureRecognizer.addTarget(self, action: #selector(handleLongPress(_:)))
        contentView.addGestureRecognizer(longPressGestureRecognizer)
    }
    
    @objc private func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
        switch gestureRecognizer.state {
        case .began:
            viewModel.isPressing = true
            viewModel.isLocked = false
            backgroundColor = UIColor.red
            viewModel.progress = 0
            longPressGestureBeganPoint = gestureRecognizer.location(in: contentView)
        case .changed:
            let location = gestureRecognizer.location(in: contentView)
            let verticalDistance = longPressGestureBeganPoint.y - location.y
            let lockProgress = Float(verticalDistance / lockDistance)
            if lockProgress >= 1 {
                print("change isLocked value to true")
                viewModel.isLocked = true
            } else {
                viewModel.progress = lockProgress
            }
        case .ended, .cancelled:
            viewModel.isPressing = false
            backgroundColor = UIColor.blue
        default:
            break
        }
    }
}
