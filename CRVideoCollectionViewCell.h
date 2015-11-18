//
//  CRVideoCollectionViewCell.h
//  cr-ratings-tvos
//
//  Created by Uladzimir Nikalayenka on 18.11.15.
//  Copyright © 2015 Uladzimir Nikalayenka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRVideoCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *videoNameLabel;

@end
