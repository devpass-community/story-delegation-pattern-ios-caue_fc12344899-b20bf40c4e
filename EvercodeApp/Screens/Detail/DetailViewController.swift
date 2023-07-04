import UIKit

final class DetailViewController: UIViewController {
        
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var dismissButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Dismiss", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didPressDismissButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        
        self.navigationItem.title = "Detail Screen"
        
        self.view.backgroundColor = .white
        self.view.addSubview(dismissButton)
        self.dismissButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dismissButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dismissButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.dismissButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func didPressDismissButton() {
        
    }
}
