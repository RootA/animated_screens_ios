
import UIKit

class BlackViewController: ColoredViewController {
  init() {
    super.init(color: .black)
  }
  override func buttonWasTapped() {
    navigationController?.popViewController(animated: true)
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

