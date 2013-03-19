//
//  GobanViewController.m
//  Goban
//
//  Created by Raj Wilhoit on 3/17/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import "GobanViewController.h"


@interface GobanViewController ()

@end

@implementation GobanViewController

- (void)viewDidLoad
{
    // Add the main view
    self.view.layer.backgroundColor = [UIColor blackColor].CGColor;
    self.view.layer.cornerRadius = 20.0;
    self.view.layer.frame = CGRectInset(self.view.layer.frame, 20, 20);
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blackColor].CGColor;
    //sublayer.frame = CGRectMake(self.view.layer.bounds.origin.x,self.view.layer.bounds.origin.y,self.view.layer.bounds.size.width, self.view.layer.bounds.size.height);
    sublayer.frame = CGRectMake(0,0,768,768);
    sublayer.contents = (id) [UIImage imageNamed:@"Goban.png"].CGImage;
    [self.view.layer addSublayer:sublayer];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)playStone
{
    NSLog(@"Called playStone");
}

-(void)score
{
    NSLog(@"Called score");
}

-(BOOL *)checkKo
{
    NSLog(@"Called checkKo");
    return NO;
}

@end
