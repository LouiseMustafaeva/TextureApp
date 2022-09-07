//
//  BaseImageCell.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class BaseImageCell: BaseCellNode, ASTableDelegate {
    
    let newsFeedCell = NewsFeedCell()
    
    override init() {
        super.init()
        
        setup()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16), child: newsFeedCell)
    }

    private func setup() {
        newsFeedCell.backgroundColor = .lightGray
        newsFeedCell.cornerRadius = 10
    }
}
