//
//  CRVideoCollectionViewCell.m
//  cr-ratings-tvos
//
//  Created by Uladzimir Nikalayenka on 18.11.15.
//  Copyright © 2015 Uladzimir Nikalayenka. All rights reserved.
//

#import "CRVideoCollectionViewCell.h"

@implementation CRVideoCollectionViewCell


- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    [self layoutIfNeeded];
    [self layoutSubviews];
    [self setNeedsDisplay];
}


- (void)didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator {
    if (self.focused) {
        self.imageView.adjustsImageWhenAncestorFocused = YES;
    } else {
        self.imageView.adjustsImageWhenAncestorFocused = NO;
    }
}

@end
