import UIKit

class CollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    private let items: [String]
    
    init(items: [String]) {
        self.items = items
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        cell.configure(with: items[indexPath.item])
        cell.backgroundColor = UIColor.blue // Or any color you want
        return cell
    }
}
