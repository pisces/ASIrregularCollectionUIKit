//
//  IrregularCollectionViewLayoutInspector.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 29/09/2017.
//
//

#import "IrregularCollectionViewLayoutInspector.h"

@implementation IrregularCollectionViewLayoutInspector

#pragma mark - ASCollectionViewLayoutInspecting protocol

- (ASSizeRange)collectionView:(ASCollectionView *)collectionView constrainedSizeForNodeAtIndexPath:(NSIndexPath *)indexPath {
    IrregularCollectionViewLayout *layout = (IrregularCollectionViewLayout *) collectionView.collectionViewLayout;
    return ASSizeRangeMake(CGSizeZero, [layout itemSizeAtIndexPath:indexPath]);
}

- (ASScrollDirection)scrollableDirections {
    return ASScrollDirectionVerticalDirections;
}

- (ASSizeRange)collectionView:(ASCollectionView *)collectionView constrainedSizeForSupplementaryNodeOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    IrregularCollectionViewLayout *layout = (IrregularCollectionViewLayout *) collectionView.collectionViewLayout;
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        return ASSizeRangeMake(CGSizeZero, [layout headerSizeForSection:indexPath.section]);
    }
    if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return ASSizeRangeMake(CGSizeZero, [layout footerSizeForSection:indexPath.section]);
    }
    return ASSizeRangeMake(CGSizeZero, CGSizeZero);
}

- (NSUInteger)collectionView:(ASCollectionView *)collectionView numberOfSectionsForSupplementaryNodeOfKind:(NSString *)kind {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader] ||
        [kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return [collectionView.collectionNode.dataSource numberOfSectionsInCollectionNode:collectionView.collectionNode];
    } else {
        return 0;
    }
}

- (NSUInteger)collectionView:(ASCollectionView *)collectionView supplementaryNodesOfKind:(NSString *)kind inSection:(NSUInteger)section {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader] ||
        [kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return 1;
    } else {
        return 0;
    }
}

@end
