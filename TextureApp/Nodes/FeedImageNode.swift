//
//  FeedImageNode.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class FeedImageNode: BaseNode {
    var imageNode = ASNetworkImageNode()
    
    override init() {
        super.init()
        
        setupNode()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4), child: imageNode)
    }
    
    private func setupNode() {
        imageNode.backgroundColor = .purple
        imageNode.cornerRadius = 10
        imageNode.style.preferredSize.height = UIScreen.main.bounds.width
        imageNode.style.preferredSize.width = UIScreen.main.bounds.width
    }
}
