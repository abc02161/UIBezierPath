//
//  customImageView.swift
//  UIBezierPath
//
//  Created by Nick on 2020/4/7.
//  Copyright © 2020 NewIdea. All rights reserved.
//

import UIKit

class customImageView: UIImageView {

    // 客製形狀(利用BezierPath畫出遮罩區域)
    override func layoutSubviews() {
       super.layoutSubviews()
       let path = UIBezierPath()
       path.move(to: CGPoint.zero)
       path.addLine(to: CGPoint(x: bounds.width, y: 0))
       path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
       path.addLine(to: CGPoint(x: bounds.width * 5/6, y: bounds.height * 0.9))
       path.addLine(to: CGPoint(x: bounds.width * 4/6, y: bounds.height))
       path.addLine(to: CGPoint(x: bounds.width * 3/6, y: bounds.height * 0.9))
       path.addLine(to: CGPoint(x: bounds.width * 2/6, y: bounds.height))
       path.addLine(to: CGPoint(x: bounds.width * 1/6, y: bounds.height * 0.9))
       path.addLine(to: CGPoint(x: 0, y: bounds.height))
        
       path.close()
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = path.cgPath
       layer.mask = shapeLayer
    }

}
