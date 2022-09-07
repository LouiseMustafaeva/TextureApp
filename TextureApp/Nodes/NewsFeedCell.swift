//
//  NewsFeedCell.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class NewsFeedCell: BaseCellNode, ASTableDelegate {
    
    let headerNode = HeaderNode()
    let feedImage = FeedImageNode()
//    let socialButtons = SocialNode()
    
    override init() {
        super.init()
    }
    
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let vStack = ASStackLayoutSpec(direction: .vertical,
                                       spacing: 0,
                                       justifyContent: .start,
                                       alignItems: .stretch,
                                       children: [headerNode, feedImage])

        return vStack
    }
    
    

}
