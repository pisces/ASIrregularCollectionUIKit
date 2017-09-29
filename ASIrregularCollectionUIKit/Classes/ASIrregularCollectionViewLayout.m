//
//  ASIrregularCollectionViewLayout.m
//  ASIrregularCollectionUIKit
//
//  Created by pisces on 29/09/2017.
//
//

#import "ASIrregularCollectionViewLayout.h"
#import "ASIrregularLayoutAttributesManager.h"

@implementation ASIrregularCollectionViewLayout

- (IrregularLayoutAttributesManager *)createAttributesManager {
    return [[ASIrregularLayoutAttributesManager alloc] initWithLayout:self];
}
@end
