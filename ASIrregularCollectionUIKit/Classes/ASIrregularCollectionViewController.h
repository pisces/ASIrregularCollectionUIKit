//
//  ASIrregularCollectionViewController.h
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 9/17/16.
//
//

#import <IrregularCollectionUIKit/IrregularCollectionUIKit.h>
#import "ASIrregularCollectionNode.h"
#import "IrregularCollectionViewLayoutInspector.h"

@interface ASIrregularCollectionViewController : PropertyManagedViewController <ASCollectionDataSource, ASCollectionDelegate, IrregularCollectionViewLayoutDelegate>
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayout *collectionViewLayout;
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayoutInspector *layoutInspector;
@property (nonnull, nonatomic) IBOutlet ASCollectionNode *collectionNode;
@end
