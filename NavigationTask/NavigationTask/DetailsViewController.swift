//
//  DetailsViewController.swift
//  NavigationTask
//
//  Created by Fawaz Alzamel on 29/02/2024.
//

import UIKit
import SnapKit

class DetailsViewController: UIViewController {
        
        var recivedMessege: String?
    
        let messageLabel = UILabel()
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white

            setUpLabel()
        }

        func setUpLabel(){
            messageLabel.textAlignment = .center
            
            view.addSubview(messageLabel)
            messageLabel.snp.makeConstraints { make in
                make.center.equalToSuperview()
                make.leading.trailing.equalToSuperview().offset(0)
            }
            messageLabel.text = recivedMessege
        }

    }

    
    
    

