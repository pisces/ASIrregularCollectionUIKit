//
//  DemoViewController.swift
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 29/09/2017.
//  Copyright © 2017 hh963103@gmail.com. All rights reserved.
//

import ASIrregularCollectionUIKit

class DemoViewController: ASIrregularCollectionViewController {
    let sizeArray = [400, 300, 200]
    let imageNames = ["201499971412727010.jpg", "99763_62164_3159.jpg", "7.jpg", "20160408110556_11.jpg", "201606100719471127_1.jpg", "article_20150904-1.jpg", "img_20150502111148_a5d91d53.jpg", "R1280x0.jpg"]
    
    var contents: [SampleContent] = [] {
        didSet {
            collectionNode.reloadData()
        }
    }
    
    // MARK: - Overridden: ASIrregularCollectionViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Demo"
        edgesForExtendedLayout = .top
        collectionViewLayout.columnSpacing = 1
        collectionViewLayout.numberOfColumns = 3
        collectionViewLayout.sectionInset = UIEdgeInsetsMake(1, 1, 1, 1)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if isFirstViewAppearence {
            contents = createRandomSizeItems(1000)
        }
    }
    
    override func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    override func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return contents.count
    }
    override func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        return {
            return SampleViewCellNode(content: self.contents[indexPath.item])
        }
    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, originalItemSizeAt indexPath: IndexPath) -> CGSize {
        let content = contents[indexPath.item]
        return CGSize(width: CGFloat(content.width), height: CGFloat(content.height))
    }
    
    // MARK: - Private methods
    
    private func createRandomSizeItems(_ count: Int) -> [SampleContent] {
        var source: Array<SampleContent> = []
        for i in 0...count {
            let indexOfHeight = Int(arc4random()%UInt32(sizeArray.count))
            let indexOfWidth = Int(arc4random()%UInt32(sizeArray.count))
            let content = SampleContent(width: sizeArray[indexOfWidth], height: sizeArray[indexOfHeight])
            content.url = imageNames[i%imageNames.count]
            source.append(content)
        }
        return source
    }
    private func createStaticItems() -> [SampleContent] {
        return [
            SampleContent(width: 300, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 200),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 200),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 200),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 200, height: 300),
            SampleContent(width: 200, height: 300),
            SampleContent(width: 200, height: 300),
            SampleContent(width: 200, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 200),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300),
            SampleContent(width: 400, height: 300)
        ]
    }
}

class SampleViewCellNode: ASCellNode {
    private lazy var imageNode: ASImageNode = {
        let node = ASImageNode()
        node.clipsToBounds = true
        node.contentMode = .scaleAspectFill
        return node
    }()
    
    convenience init(content: SampleContent) {
        self.init()
        
        addSubnode(imageNode)
        
        if let url = content.url {
            imageNode.image = UIImage(named: url)
        }
    }
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASWrapperLayoutSpec(layoutElement: imageNode)
    }
}
