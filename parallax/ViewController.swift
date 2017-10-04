import UIKit

class ViewController: ParallaxViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellIdentifier = "cell2"
        let v = CustomView()
        v.frame.size.height = 150
        parallaxView = v
    }
    
    
}

class CustomView: UIView{
    var image: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.image = #imageLiteral(resourceName: "Screen Shot 2017-08-27 at 1.44.23 PM.png")
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("blah")
    }
    
    func setup(){
        backgroundColor = .green
        addSubview(image)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[image]|", options: NSLayoutFormatOptions.init(rawValue: 0), metrics: nil, views: ["image" : image]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[image]|", options: NSLayoutFormatOptions.init(rawValue: 0), metrics: nil, views: ["image" : image]))
        
    }
}
