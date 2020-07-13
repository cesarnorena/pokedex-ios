import UIKit
//import SnapKit

class ListView: UIView {
    
    let title: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        title.text = "Hello World"
        addSubview(title)
    }
    
    override func updateConstraints() {
        
    }
}
