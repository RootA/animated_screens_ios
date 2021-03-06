
import UIKit

extension BlackViewController {
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    triggerButton.backgroundColor = .white
    contentTextView.backgroundColor = .clear
    
    let titleAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white,
                           NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18.0)]
    
    let string = """
                        Fluid Talks\n\n
                        Hacker News\n\n
                        Curiosities\n\n
                        Daily Animations\n\n
                        Fitspiration\n\n
                        Is it Friday yet?\n\n
                    """
    let mutableAttrString = NSMutableAttributedString(string: string, attributes:titleAttributes)
    
    contentTextView.attributedText = mutableAttrString
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    triggerButton.backgroundColor = .white
    contentTextView.backgroundColor = .black
    
    let buttonWidthHeight: CGFloat = 25.0
    let padding: CGFloat = 16.0
    let statusBarPadding: CGFloat = 20.0
    
    let constrainedSize = CGSize(width: view.bounds.width - 32.0 - buttonWidthHeight, height: view.bounds.height)
    let titleSize = contentTextView.sizeThatFits(constrainedSize)
    
    contentTextView.bounds = CGRect(x: 0, y: 0, width: titleSize.width, height: titleSize.height)
    contentTextView.center = CGPoint(x: 16 + contentTextView.bounds.width/2.0, y: 60 + contentTextView.bounds.height/2.0)
    
    triggerButton.layer.cornerRadius = buttonWidthHeight/2.0
    triggerButton.frame = CGRect(x: view.bounds.width - buttonWidthHeight - padding, y: padding + statusBarPadding, width: buttonWidthHeight, height: buttonWidthHeight)
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }
}

