//
//  HomePresentation.swift
//  TextureApp
//
//  Created by Louise on 07/09/22.
//

import AsyncDisplayKit

class HomePresentation: BaseNode {
    
    let table = ASTableNode()
    let dataSource = HomeDataSource()
    
    override init() {
        super.init()
        table.allowsSelection = false
        table.backgroundColor = .white
        table.dataSource = dataSource
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(insets: UIEdgeInsets.zero, child: table)
    }
    
    //    MARK: - Delegate
    
        func tableNode(_ tableNode: ASTableNode, constrainedSizeForRowAt indexPath: IndexPath) -> ASSizeRange {
            let width = UIScreen.main.bounds.width
    
            return ASSizeRangeMake(CGSize(width: width, height: 0), CGSize(width: width, height: CGFloat.greatestFiniteMagnitude))
        }
        
    
}
