import Foundation
import UIKit

public class TDSwiftShape {
    public static func drawCircle(onView view: UIView, atCenter center: CGPoint, redius: CGFloat, lineWidth: CGFloat, fillColor: CGColor, strokeColor: CGColor) {
        let circlePath = UIBezierPath(arcCenter: center, radius: redius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        shapeLayer.fillColor = fillColor
        shapeLayer.strokeColor = strokeColor
        shapeLayer.lineWidth = lineWidth
        
        view.layer.addSublayer(shapeLayer)
    }
    
    public static func drawDashedLine(onView view: UIView, fromPoint from: CGPoint, toPoint to: CGPoint, lineWidth: CGFloat, dashLength: NSNumber, dashGap: NSNumber, lineColor color: CGColor) {
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = color
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineDashPattern = [dashLength, dashGap]
        
        let path = CGMutablePath()
        path.addLines(between: [from, to])
        shapeLayer.path = path
        
        view.layer.addSublayer(shapeLayer)
    }
}
