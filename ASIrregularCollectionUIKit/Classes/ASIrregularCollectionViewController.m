//
//  ASIrregularCollectionViewController.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 9/17/16.
//
//

#import "ASIrregularCollectionViewController.h"

@implementation ASIrregularCollectionViewController

#pragma mark - Overridden: PropertyManagedViewController

- (void)dealloc {
    _collectionNode.dataSource = nil;
    _collectionNode.delegate = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _collectionNode = [ASIrregularCollectionNode new];
    ((IrregularCollectionViewLayout *) _collectionNode.collectionViewLayout).delegate = self;
    _collectionNode.dataSource = self;
    _collectionNode.delegate = self;
    self.view = _collectionNode.view;
    
    [_collectionNode tuningParametersForRangeMode:ASLayoutRangeModeMinimum rangeType:ASLayoutRangeTypeDisplay];
}

@end
