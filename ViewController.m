//
//  ViewController.m
//  cr-ratings-tvos
//
//  Created by Uladzimir Nikalayenka on 18.11.15.
//  Copyright © 2015 Uladzimir Nikalayenka. All rights reserved.
//

#import "ViewController.h"
#import  <AVFoundation/AVFoundation.h>
#import  <AVKit/AVKit.h>
#import "CRVideoCollectionViewCell.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) NSDictionary *urls;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.urls = @{
                  @"Digital Cameras" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4193946050001_4193853269001.mp4?pubId=1078702682&videoId=4193853269001",
                  @"Washing Machines" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4518542289001_1508CRO-Washing-Machine-Buying-Guide-Non-Interactive-CRO.mp4?pubId=1078702682&videoId=1651750822",
                  @"TVs" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4023036257001_1501CRO-TV-Buying-Guide-CRO-HD.mp4?pubId=1078702682&videoId=1280500146",
                  @"Mattresses" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4459818977001_1507BG-Mattress-Buying-Guide-CRO-Non-Interactive.mp4?pubId=1078702682&videoId=72098199001",
                  @"Tires" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4406556934001_1506BG-Tires-CRO.mp4?pubId=1078702682&videoId=45361750001",
                  @"Refrigerators" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4524393410001_1508BG-Refridgerator-CRO.mp4?pubId=1078702682&videoId=1676042585",
                  @"Snow Blowers" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4003142413001_1412CRO-SnowBlower-Buying-Guide-CRO-HD.mp4?pubId=1078702682&videoId=7036448001",
                  @"Printers" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4603464859001_1510CRO-Printer-Non-interactive-CRO.mp4?pubId=1078702682&videoId=1902498467",
                  @"Humidifiers" : @"http://brightcove.vo.llnwd.net/e1/uds/pd/1078702682/1078702682_4078586459001_1502CRO-Humidifier-BG-CRO-HD.mp4?pubId=1078702682&videoId=740752940001"};
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.urls.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CRVideoCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"supercell" forIndexPath:indexPath];
    
    cell.videoNameLabel.text = [[self.urls allKeys] objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[[self.urls allKeys] objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSURL *videoURL = [NSURL URLWithString:[self.urls objectForKey:[[self.urls allKeys] objectAtIndex:indexPath.row]]];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *playerViewController = [AVPlayerViewController new];
    playerViewController.player = player;
    
    [self presentViewController:playerViewController animated:YES completion:nil];
}

@end
