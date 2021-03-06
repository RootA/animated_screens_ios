


import UIKit

extension WhiteViewController {
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    triggerButton.backgroundColor = .black
    contentTextView.backgroundColor = .clear
    
    let titleAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black,
                           NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18.0)]
    let storyAttributes = [NSAttributedStringKey.foregroundColor: UIColor.lightGray,
                           NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16.0)]
    
    let mutableAttrString = NSMutableAttributedString(string: "Hello, Hello welcome do this animation mockup \"Fluid Talk\"\n\n", attributes:titleAttributes)
    mutableAttrString.append(NSAttributedString(string: "Hi, I'm a_mwathi. Tap the black dot,\n choose stuff you care about and close\n me when you're done. You're going to\n like me.\n\nClick me.", attributes:storyAttributes))
    
    contentTextView.attributedText = mutableAttrString
  }
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
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
}

