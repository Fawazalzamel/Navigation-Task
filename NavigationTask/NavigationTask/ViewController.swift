//
//  ViewController.swift
//  NavigationTask
//
//  Created by Fawaz Alzamel on 29/02/2024.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

    let navigateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationSetup()
        
    }
    
    func navigationSetup(){
        // Setup navigateButton properties
        navigateButton.setTitle("Show Details", for: .normal)
        navigateButton.backgroundColor = .systemBlue
        navigateButton.layer.cornerRadius = 10

        
        
        view.addSubview(navigateButton)
        navigateButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }

        // Add target action for the button
        navigateButton.addTarget(self, action: #selector(navigateButtonTapped), for: .touchUpInside)
    }

    @objc func navigateButtonTapped() {
            let secondVC = DetailsViewController()
            secondVC.recivedMessege = "Welcome to Details View!"
            secondVC.modalPresentationStyle = .fullScreen
            self.present(secondVC,animated : true, completion: nil)
        
        
        }
    }




