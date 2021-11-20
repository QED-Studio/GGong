//
//  Extension+UIColor.swift
//  GGong
//
//  Created by Lee on 2021/11/20.
//

import UIKit

extension UIColor {
  
  convenience init(hex: Int, alpha: CGFloat = 1.0) {
    self.init(
      red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
      blue:  CGFloat((hex & 0x0000FF) >> 0)  / 255.0,
      alpha: alpha
    )
  }
  
  class var my74BDCB: UIColor { UIColor(hex: 0x74BDCB) }
  class var myE7F2F8: UIColor { UIColor(hex: 0xE7F2F8) }
  class var myEDF7F9: UIColor { UIColor(hex: 0xEDF7F9) }
  class var my274472: UIColor { UIColor(hex: 0x274472) }
  class var my41729F: UIColor { UIColor(hex: 0x41729F) }
  class var my5885AF: UIColor { UIColor(hex: 0x5885AF) }
  class var my232839: UIColor { UIColor(hex: 0x232839) }
  class var my353a4d: UIColor { UIColor(hex: 0x353a4d) }
  class var my6c6043: UIColor { UIColor(hex: 0x6c6043) }
  class var my89B5AF: UIColor { UIColor(hex: 0x89B5AF) }
  class var my96C7C1: UIColor { UIColor(hex: 0x96C7C1) }
  class var myDED9C4: UIColor { UIColor(hex: 0xDED9C4) }
  class var myD0CAB2: UIColor { UIColor(hex: 0xD0CAB2) }
//  class var my: UIColor { UIColor(hex: 0x) }

}
