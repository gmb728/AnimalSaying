//
//  CustomSliderBtn.swift
//  AnimalSaying
//
//  Created by Chang Sophia on 2018/9/19.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

 
class CustomSliderBtn: UISlider {
    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }
    @IBInspectable var thumbImageHightLighted: UIImage? {
        didSet {
            setThumbImage(thumbImageHightLighted, for: .highlighted)
        }
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
