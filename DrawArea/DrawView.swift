//
//  DrawView.swift
//  DrawArea
//
//  Created by Ömer Koçbil on 8.11.2016.
//  Copyright © 2016 Ömer Koçbil. All rights reserved.
//

import UIKit

class DrawView: UIView {

    var lines: [Line] = []
    var lastPoint: CGPoint!
    var drawColor = UIColor.black
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lastPoint = touches.first?.location(in: self)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let newPoint = touches.first?.location(in: self)
        lines.append(Line(start: lastPoint, end: newPoint!, color: drawColor ))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineCap(CGLineCap.square)
        context?.setLineWidth(5)
        
        for line in lines {
            context!.beginPath()
            context?.move(to: line.start)
            context?.addLine(to: line.end)
            context?.setStrokeColor(line.color.cgColor)
            context?.strokePath()
        }
    }
    
}
