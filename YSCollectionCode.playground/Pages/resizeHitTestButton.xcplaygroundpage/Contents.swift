/*:
 [Previous](@previous)
 ### 扩大 按钮的点击范围
 #### 重写 - (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event;
 ##### 自定义 Button
*/

class YSButton: UIButton {
  override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
    var bound = bounds
    let widthDelta: CGFloat = max(50, 0)
    let heightDelta: CGFloat  = max(50, 0)
    bound = bound.insetBy(dx: -0.5 * widthDelta, dy: -0.5 * heightDelta)
    return bound.contains(point)
  }
}

//:  添加 UIButton 拓展

extension UIButton {
  open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
    var bound = bounds
    let widthDelta: CGFloat = max(50, 0)
    let heightDelta: CGFloat  = max(50, 0)
    bound = bound.insetBy(dx: -0.5 * widthDelta, dy: -0.5 * heightDelta)
    return bound.contains(point)
  }
}

//: [Next](@next)
