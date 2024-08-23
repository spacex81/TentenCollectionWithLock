import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    let backgroundImageView = UIImageView(image: UIImage(named: "bg_recorder_lock"))
    private let longPressRecognizer = UILongPressGestureRecognizer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupGestureRecognizer()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        setupGestureRecognizer()
    }
    
    private func setupViews() {
        contentView.addSubview(backgroundImageView)
        backgroundImageView.isHidden = true
    }

    private func setupGestureRecognizer() {
        longPressRecognizer.addTarget(self, action: #selector(handleLongPress(_:)))
        self.addGestureRecognizer(longPressRecognizer)
    }

    @objc private func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
        switch gestureRecognizer.state {
        case .began:
            self.backgroundImageView.isHidden = false
            self.backgroundColor = .red
        case .ended, .cancelled:
            self.backgroundImageView.isHidden = true
            self.backgroundColor = .blue
        default:
            break
        }
    }
}
