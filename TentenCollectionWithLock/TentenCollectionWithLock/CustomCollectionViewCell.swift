import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let longPressGestureRecognizer = UILongPressGestureRecognizer()
    
    // Property to track long press state
    private var isPressed = false
    
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
            backgroundColor = UIColor.red
            isPressed = true
        case .ended, .cancelled:
            backgroundColor = UIColor.blue
            isPressed = false
        default:
            break
        }
    }
}
