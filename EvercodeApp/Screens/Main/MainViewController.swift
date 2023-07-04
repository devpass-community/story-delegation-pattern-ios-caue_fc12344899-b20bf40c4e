import UIKit

final class MainViewController: UIViewController {
    
    lazy var detailButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go to Detail", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didPressDetailButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        
        self.navigationItem.title = "Evercode App"
        
        self.view.backgroundColor = .white
        self.view.addSubview(detailButton)
        self.detailButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.detailButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.detailButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.detailButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func didPressDetailButton() {
        
        let detailViewController = DetailViewController()
        self.present(detailViewController, animated: true)
    }
}
