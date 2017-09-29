//
//  ASIrregularLayoutAttributesManager.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 29/09/2017.
//
//

#import "ASIrregularLayoutAttributesManager.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface ASIrregularLayoutAttributesManager ()
@property (nullable, nonatomic, readonly) ASCollectionNode *collectionNode;
@end

@implementation ASIrregularLayoutAttributesManager

#pragma mark - Overridden: IrregularLayoutAttributesManager

- (ASCollectionNode *)collectionNode {
    return ((ASCollectionView *) layout.collectionView).collectionNode;
}

- (NSInteger)numberOfSections {
    return [self.collectionNode.dataSource numberOfSectionsInCollectionNode:self.collectionNode];
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    return [self.collectionNode.dataSource collectionNode:self.collectionNode numberOfItemsInSection:section];
}

@end
