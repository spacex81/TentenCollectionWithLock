import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    private let longPressRecognizer = UILongPressGestureRecognizer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGestureRecognizer()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGestureRecognizer()
    }
    

    private func setupGestureRecognizer() {
        longPressRecognizer.addTarget(self, action: #selector(handleLongPress(_:)))
        self.addGestureRecognizer(longPressRecognizer)
    }

    @objc private func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
        switch gestureRecognizer.state {
        case .began:
            self.backgroundColor = .red
        case .ended, .cancelled:
            self.backgroundColor = .blue
        default:
            break
        }
    }
}
