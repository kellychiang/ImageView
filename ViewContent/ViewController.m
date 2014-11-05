//
//  ViewController.m
//  ViewContent
//
//  Created by kelly on 2014/11/5.
//  Copyright (c) 2014年 kelly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
- (IBAction)SegmentedOne:(UISegmentedControl *)sender;
- (IBAction)SegmentedSecond:(UISegmentedControl *)sender;
- (IBAction)SegmentedThird:(UISegmentedControl *)sender;
- (IBAction)SegmentedFourth:(UISegmentedControl *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myImageView.image = [UIImage imageNamed:@"Sample.JPG"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SegmentedOne:(UISegmentedControl *)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.myImageView.contentMode = UIViewContentModeScaleToFill;
            NSLog(@"ScaleToFill");
            break;
        case 1:
            self.myImageView.contentMode = UIViewContentModeScaleAspectFit;
            NSLog(@"AspectFit");
            break;
        case 2:
            self.myImageView.contentMode = UIViewContentModeScaleAspectFill;
            NSLog(@"AspectFill");
            break;
        default:
            break;
    }
}

- (IBAction)SegmentedSecond:(UISegmentedControl *)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.myImageView.contentMode = UIViewContentModeRedraw;
            NSLog(@"Redraw");
            break;
        case 1:
            self.myImageView.contentMode = UIViewContentModeCenter;
            NSLog(@"Center");
            break;
        case 2:
            self.myImageView.contentMode = UIViewContentModeTop;
            NSLog(@"Top");
            break;
        case 3:
            self.myImageView.contentMode = UIViewContentModeBottom;
            NSLog(@"Bottom");
            break;
        default:
            break;
    }

}

- (IBAction)SegmentedThird:(UISegmentedControl *)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.myImageView.contentMode = UIViewContentModeLeft;
            NSLog(@"Left");
            break;
        case 1:
            self.myImageView.contentMode = UIViewContentModeRight;
            NSLog(@"Right");
            break;
        default:
            break;
    }

}

- (IBAction)SegmentedFourth:(UISegmentedControl *)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.myImageView.contentMode = UIViewContentModeTopLeft;
            NSLog(@"TopLeft");
            break;
        case 1:
            self.myImageView.contentMode = UIViewContentModeTopRight;
            NSLog(@"TopRight");
            break;
        case 2:
            self.myImageView.contentMode = UIViewContentModeBottomLeft;
            NSLog(@"BottomLeft");
            break;
        case 3:
            self.myImageView.contentMode = UIViewContentModeBottomRight;
            NSLog(@"BottomRight");
            break;
        default:
            break;
    }

}
@end
