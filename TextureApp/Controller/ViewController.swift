//
//  ViewController.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class ViewController: ASDKViewController<BaseNode> {

    var newsFeed: HomePresentation!
    
    override init() {
        super.init(node: BaseNode())
        
        newsFeed = HomePresentation()
        self.node.addSubnode(newsFeed)
        self.node.backgroundColor = .white
        
        self.node.layoutSpecBlock = { (node, contrainedSize) in
            return ASInsetLayoutSpec(insets: UIEdgeInsets.zero, child: self.newsFeed)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

