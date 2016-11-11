//
//  Line.swift
//  DrawArea
//
//  Created by Ömer Koçbil on 8.11.2016.
//  Copyright © 2016 Ömer Koçbil. All rights reserved.
//

import UIKit

class Line{

    var start: CGPoint
    var end: CGPoint
    var color = UIColor()
    
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
    
    var startX: CGFloat{
        get{
            return start.x
        }
    }
    
    var startY: CGFloat{
        get{
            return start.y
        }
    }
    
    var endX: CGFloat{
        get{
            return end.x
        }
    }
    
    var endY: CGFloat{
        get{
            return end.y
        }
    }
    
}
