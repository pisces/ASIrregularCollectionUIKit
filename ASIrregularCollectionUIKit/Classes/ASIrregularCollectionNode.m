//
//  ASIrregularCollectionNode.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 28/09/2017.
//
//

#import "ASIrregularCollectionNode.h"

@implementation ASIrregularCollectionNode

#pragma mark - Overridden: ASCollectionNode

- (void)deleteItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    [self prepareLayout];
    
    [super deleteItemsAtIndexPaths:indexPaths];
}

- (void)deleteSections:(NSIndexSet *)sections {
    [self prepareLayout];
    
    [super deleteSections:sections];
}

- (void)insertSections:(NSIndexSet *)sections {
    [self prepareLayout];
    
    [super insertSections:sections];
}

- (void)insertItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    [self prepareLayout];
    
    [super insertItemsAtIndexPaths:indexPaths];
}

- (void)moveItemAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath {
    [self prepareLayout];
    
    [super moveItemAtIndexPath:indexPath toIndexPath:newIndexPath];
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection {
    [self prepareLayout];
    
    [super moveSection:section toSection:newSection];
}

- (void)reloadItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    [self prepareLayout];
    
    [super reloadItemsAtIndexPaths:indexPaths];
}

- (void)reloadSections:(NSIndexSet *)sections {
    [self prepareLayout];
    
    [super reloadSections:sections];
}

- (void)performBatchUpdates:(void (^)())updates completion:(void (^)(BOOL))completion {
    [super performBatchUpdates:^{
        [self prepareLayout];
        updates();
    } completion:completion];
}

#pragma mark - Public methods

- (instancetype)init {
    self = [super initWithFrame:CGRectZero collectionViewLayout:[ASIrregularCollectionViewLayout new]];
    if (self) {
        self.layoutInspector = [IrregularCollectionViewLayoutInspector new];
    }
    return self;
}

#pragma mark - Private methods

- (void)prepareLayout {
    [((IrregularCollectionViewLayout *) self.collectionViewLayout) prepareLayout];
}

@end
