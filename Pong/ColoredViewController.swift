
import UIKit

enum Color {
  case white
  case black
}

class ColoredViewController: UIViewController, CircleTransitionable {    
  var mainView: UIView {
    return view
  }

  let triggerButton = UIButton()
  let contentTextView = UITextView()

  let color: Color
  
  init(color: Color) {
    self.color = color
    
    super.init(nibName: nil, bundle: nil)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = color(for: color)
    contentTextView.isUserInteractionEnabled = false
    
    triggerButton.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
    
    self.view.addSubview(contentTextView)
    self.view.addSubview(triggerButton)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    view.setNeedsLayout()
  }
  
  func color(for color: Color) -> UIColor {
    switch color {
    case .white:
      return .white
    case .black:
      return .black
    }
  }
  
  @objc func buttonWasTapped() {
    assertionFailure("This method should be implemented in subclasses")
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

