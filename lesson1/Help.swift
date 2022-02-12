//
//  Help.swift
//  lesson1
//
//  Created by Samir Maksutov on 12/2/22.
//

import Foundation
import SnapKit
import UIKit

class HelpController: UIViewController {
    private lazy var help: UILabel = {
        let view = UILabel()
        view.text = "напишите проблему"
        view.textColor = .black
        view.numberOfLines = 10
        view.font = UIFont.systemFont(ofSize: 18)
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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(help)
        help.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        view.addSubview(Exit)
        Exit.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16 + 16)
            make.left.equalToSuperview().offset(20)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.popViewController(animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
