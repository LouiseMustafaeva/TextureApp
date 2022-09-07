//
//  HeaderNode.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class HeaderNode: BaseNode {
    
    var name = ASTextNode()
    
    override init() {
        super.init()
        
        setup()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let nameSpec = ASInsetLayoutSpec(insets: UIEdgeInsets(top: 4, left: 16, bottom: 0, right: 0), child: name)
        return nameSpec
    }
    
    private func setup() {
        let text = String(format: "%@: \n%@", "Test", "Test")
        name.attributedText = NSAttributedString(string: text, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular), NSAttributedString.Key.foregroundColor: UIColor.label])
    }
    
}
