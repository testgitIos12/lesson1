//
//  InfoFromLogin.swift
//  lesson1
//
//  Created by Samir Maksutov on 12/2/22.
//

import Foundation
import UIKit
import SnapKit

class InfoFromLoginController: UIViewController {
    
    private lazy var infoFromLogin: UILabel = {
        let view = UILabel()
        view.text = "подходящая информация"
        view.textColor = .black
        view.numberOfLines = 2
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return view
    }()
    private lazy var Exit: UIButton = {
        let view = UIButton()
        view.setTitle("Exit", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.addTarget(self, action: #selector(Exit(view:)), for: .touchUpInside)
        view.backgroundColor = .white
        return view
    }()
    
    @objc func Exit (view: UIButton) {
        navigationController?.pushViewController(ViewController(), animated: true)
        print("fjkdfd")
    }
    private lazy var infoFromLogin2: UILabel = {
        let view = UILabel()
        view.text = ""
        view.numberOfLines = 0
        view.textColor = .black
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(Exit)
        Exit.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16 + 16)
            make.left.equalToSuperview().offset(20)
        }
        view.addSubview(infoFromLogin)
        infoFromLogin.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
        }
        view.addSubview(infoFromLogin2)
        infoFromLogin2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
            make.top.equalTo(infoFromLogin.snp.bottom).offset(10)
        }
    }
    
}
