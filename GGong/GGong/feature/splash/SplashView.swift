//
//  SplashView.swift
//  GGong
//
//  Created by Lee on 2021/11/20.
//

import UIKit
import SnapKit

class SplashView: UIView {
  
  // MARK: - Property
  var backgroundImageView = UIImageView()
  var titleLabel = UILabel()
  var subTitleLabel = UILabel()
  
  // MARK: - Life Cycle
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.setAttribute()
    self.setConstraint()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}



// MARK: - UI

extension SplashView {
  
  private func setAttribute() {
    backgroundImageView.image = UIImage(named: "mainimage")
    backgroundImageView.contentMode = .scaleAspectFill
    
    titleLabel.text = "GGong"
    titleLabel.font = UIFont.boldSystemFont(ofSize: 40)
    titleLabel.textColor = .my353a4d
    
    subTitleLabel.text = "추억을 꽁꽁 숨겨두다..."
    subTitleLabel.font = UIFont.systemFont(ofSize: 14)
    subTitleLabel.textColor = .my232839
    
  }
  
  private func setConstraint() {
    [backgroundImageView, titleLabel, subTitleLabel].forEach {
      self.addSubview($0)
//      $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
//    NSLayoutConstraint.activate([
//      backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
//      backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//      backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//      backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
//
//      titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//      titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//
//      subTitleLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//      subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -10)
//    ])
    
    // 스냅킷 사용 시 이렇게
    backgroundImageView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    
    titleLabel.snp.makeConstraints { make in
      make.centerX.equalToSuperview()
      make.centerY.equalToSuperview().offset(-40)
    }
    
    subTitleLabel.snp.makeConstraints { make in
      make.centerX.equalTo(titleLabel)
      make.top.equalTo(titleLabel.snp.bottom).offset(10)
    }
  }
}
