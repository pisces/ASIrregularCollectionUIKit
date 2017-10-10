//
//  ASIrregularCollectionNode.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 28/09/2017.
//
//

#import "ASIrregularCollectionNode.h"

@interface ASIrregularCollectionNode ()
@property (nonnull, nonatomic, readonly) ASIrregularCollectionViewLayout *irregularCollectionViewLayout;
@end

@implementation ASIrregularCollectionNode

#pragma mark - Properties

- (ASIrregularCollectionViewLayout *)irregularCollectionViewLayout {
    return (ASIrregularCollectionViewLayout *) self.collectionViewLayout;
}

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
        self.layoutInspector = self.irregularCollectionViewLayout.inspector;
    }
    return self;
}

#pragma mark - Private methods

- (void)prepareLayout {
    [self.irregularCollectionViewLayout prepareLayout];
}

@end
