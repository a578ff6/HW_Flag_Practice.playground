
// 烏克蘭國旗
//import UIKit
//
//let playgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 260, height: 173))
//
//let blueView = UIView(frame: CGRect(x: 0, y: 0, width: playgroundView.frame.maxX, height: playgroundView.frame.midY))
//blueView.backgroundColor = UIColor(red: 12/255, green: 99/255, blue: 191/255, alpha: 1)
//playgroundView.addSubview(blueView)
//
//let yellowView = UIView(frame: CGRect(x: 0, y: playgroundView.frame.midY, width: playgroundView.frame.maxX, height: playgroundView.frame.midY))
//yellowView.backgroundColor = UIColor(red: 242/255, green: 203/255, blue: 1/255, alpha: 1)
//playgroundView.addSubview(yellowView)
//
//playgroundView





// 以色列國旗（addSublayer）
//import UIKit
//
//let flagGroundView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 220))
//flagGroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//
//let upperBlueLineView = UIView(frame: CGRect(x: 0, y: 23, width: flagGroundView.frame.maxX, height: 33))
//upperBlueLineView.backgroundColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1)
//flagGroundView.addSubview(upperBlueLineView)
//
//let lowerBlueLineView = UIView(frame: upperBlueLineView.frame)
//lowerBlueLineView.backgroundColor = upperBlueLineView.backgroundColor
//
//// offsetBy 將視圖的位置使其相對於原位置發生偏移
//lowerBlueLineView.frame = upperBlueLineView.frame.offsetBy(dx: 0, dy: 142)
//flagGroundView.addSubview(lowerBlueLineView)
//
//// 三角形
//let blueTrianglePath = UIBezierPath()
//blueTrianglePath.move(to: CGPoint(x: 150, y: 78))
//blueTrianglePath.addLine(to: CGPoint(x: 121, y: 126))
//blueTrianglePath.addLine(to: CGPoint(x: 178, y: 126))
//blueTrianglePath.close()
//
//let blueTriangleSharpLayer = CAShapeLayer()
//blueTriangleSharpLayer.path = blueTrianglePath.cgPath
//blueTriangleSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
//blueTriangleSharpLayer.lineWidth = 7
//blueTriangleSharpLayer.fillColor = UIColor.clear.cgColor
//
//flagGroundView.layer.addSublayer(blueTriangleSharpLayer)
//
//// 倒三角形
//let reverseBlueTrianglePath = UIBezierPath()
//reverseBlueTrianglePath.move(to: CGPoint(x: 150, y: 143))
//reverseBlueTrianglePath.addLine(to: CGPoint(x: 122, y: 94))
//reverseBlueTrianglePath.addLine(to: CGPoint(x: 177, y: 94))
//reverseBlueTrianglePath.close()
//
//let reverseBlueTriangleSharpLayer = CAShapeLayer()
//reverseBlueTriangleSharpLayer.path = reverseBlueTrianglePath.cgPath
//reverseBlueTriangleSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
//reverseBlueTriangleSharpLayer.lineWidth = 7
//reverseBlueTriangleSharpLayer.fillColor = UIColor.clear.cgColor
//
//flagGroundView.layer.addSublayer(reverseBlueTriangleSharpLayer)
//
//flagGroundView





// 以色列國旗（addSublayer）
import UIKit

let flagGroundView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 220))
flagGroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

let upperBlueLineView = UIView(frame: CGRect(x: 0, y: 23, width: flagGroundView.frame.maxX, height: 33))
upperBlueLineView.backgroundColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1)
flagGroundView.addSubview(upperBlueLineView)

let lowerBlueLineView = UIView(frame: upperBlueLineView.frame)
lowerBlueLineView.backgroundColor = upperBlueLineView.backgroundColor

// offsetBy 將視圖的位置使其相對於原位置發生偏移
lowerBlueLineView.frame = upperBlueLineView.frame.offsetBy(dx: 0, dy: 142)
flagGroundView.addSubview(lowerBlueLineView)

// 三角形
let blueTrianglePath = UIBezierPath()
blueTrianglePath.move(to: CGPoint(x: 150, y: 78))
blueTrianglePath.addLine(to: CGPoint(x: 121, y: 126))
blueTrianglePath.addLine(to: CGPoint(x: 178, y: 126))
blueTrianglePath.close()

let blueTriangleSharpLayer = CAShapeLayer()
blueTriangleSharpLayer.path = blueTrianglePath.cgPath
blueTriangleSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
blueTriangleSharpLayer.lineWidth = 7
blueTriangleSharpLayer.fillColor = UIColor.clear.cgColor

flagGroundView.layer.addSublayer(blueTriangleSharpLayer)

// 用CGAffineTransform實現垂直鏡像翻轉
let reverseBlueTriangleSharpLayer = CAShapeLayer()
reverseBlueTriangleSharpLayer.path = blueTrianglePath.cgPath

let boundingBox = blueTrianglePath.cgPath.boundingBox
reverseBlueTriangleSharpLayer.bounds = boundingBox
reverseBlueTriangleSharpLayer.position = CGPoint(x: boundingBox.midX, y: boundingBox.midY)

let transform = CGAffineTransform(scaleX: 1, y: -1).translatedBy(x: 0, y: -16)
reverseBlueTriangleSharpLayer.setAffineTransform(transform)
reverseBlueTriangleSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
reverseBlueTriangleSharpLayer.fillColor = UIColor.clear.cgColor
reverseBlueTriangleSharpLayer.lineWidth = 7

flagGroundView.layer.addSublayer(reverseBlueTriangleSharpLayer)
flagGroundView






// 採用mask作法 （沒必要）
//import UIKit
//
//let flagGroundView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 220))
//flagGroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//
//let blueLineView = UIView(frame: CGRect(x: 0, y: 23, width: flagGroundView.frame.maxX, height: 33))
//blueLineView.backgroundColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1)
//flagGroundView.addSubview(blueLineView)
//
//let blueLineView2 = UIView(frame: blueLineView.frame)
//blueLineView2.backgroundColor = blueLineView.backgroundColor
//flagGroundView.addSubview(blueLineView2)
//
//// offsetBy 將視圖的位置使其相對於原位置發生偏移
//blueLineView2.frame = blueLineView.frame.offsetBy(dx: 0, dy: 142)
//
//// 藍色三角
//let blueTriangleView = UIView(frame: flagGroundView.frame)
//
//let blueTrianglePath = UIBezierPath()
//blueTrianglePath.move(to: CGPoint(x: 150, y: 78))
//blueTrianglePath.addLine(to: CGPoint(x: 121, y: 126))
//blueTrianglePath.addLine(to: CGPoint(x: 178, y: 126))
//blueTrianglePath.close()
//
//let blueTriangleSharpLayer = CAShapeLayer()
//blueTriangleSharpLayer.path = blueTrianglePath.cgPath
//blueTriangleSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
//blueTriangleSharpLayer.fillColor = UIColor.clear.cgColor
//blueTriangleSharpLayer.lineWidth = 8
//blueTriangleView.layer.mask = blueTriangleSharpLayer
//
//flagGroundView.layer.addSublayer(blueTriangleSharpLayer)
//
//
//// 倒藍色
//let reverseBlueTriangleView = UIView(frame: flagGroundView.frame)
//
//let reverseBlueTrianglePath = UIBezierPath()
//reverseBlueTrianglePath.move(to: CGPoint(x: 150, y: 143))
//reverseBlueTrianglePath.addLine(to: CGPoint(x: 122, y: 94))
//reverseBlueTrianglePath.addLine(to: CGPoint(x: 177, y: 94))
//reverseBlueTrianglePath.close()
//
//let reverseBlueTriangSharpLayer = CAShapeLayer()
//reverseBlueTriangSharpLayer.path = reverseBlueTrianglePath.cgPath
//reverseBlueTriangSharpLayer.strokeColor = UIColor(red: 0, green: 56/255, blue: 184/255, alpha: 1).cgColor
//reverseBlueTriangSharpLayer.fillColor = UIColor.clear.cgColor
//reverseBlueTriangSharpLayer.lineWidth = 8
//reverseBlueTriangleView.layer.mask = reverseBlueTriangSharpLayer
//
//flagGroundView.layer.addSublayer(reverseBlueTriangSharpLayer)
//
//flagGroundView


