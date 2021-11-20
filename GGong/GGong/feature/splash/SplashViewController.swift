//
//  SplashViewController.swift
//  GGong
//
//  Created by Lee on 2021/11/18.
//

import UIKit

class SplashViewController: BaseViewController {
  
  private var splashV = SplashView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setAttribute()
    self.setConstraint()
  }
}

// MARK: - UI

extension SplashViewController {
  
  private func setAttribute() {
    self.view.backgroundColor = .systemBackground
    
  }
  
  private func setConstraint() {
//    let guide = self.view.safeAreaLayoutGuide
    view.addSubview(splashV)
    splashV.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  }
}
