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

Goban *goBoard;

- (void)viewDidLoad
{
    // Add the main view image
    self.view.layer.backgroundColor = [UIColor blackColor].CGColor;
    self.view.layer.cornerRadius = 20.0;
    self.view.layer.frame = CGRectInset(self.view.layer.frame, 20, 20);
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blackColor].CGColor;
    //sublayer.frame = CGRectMake(self.view.layer.bounds.origin.x,self.view.layer.bounds.origin.y,self.view.layer.bounds.size.width, self.view.layer.bounds.size.height);
    sublayer.frame = CGRectMake(0,0,768,768);
    sublayer.contents = (id) [UIImage imageNamed:@"Goban.png"].CGImage;
    [self.view.layer addSublayer:sublayer];
    
    //Populate the goBoard populate it
    goBoard = [[Goban alloc] init];
/*    goBoard.goban = [NSMutableArray arrayWithObjects:
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",
                     @"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ "
                     ,nil];
*/
    goBoard.goban = [NSMutableArray arrayWithObjects:
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil],
                     [NSMutableArray arrayWithObjects:@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",@"+ ",nil], nil];
    
     [goBoard printBoardToConsole];
     [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)score
{
    NSLog(@"Called score");
}

/*-(BOOL *)checkKo
{
    NSLog(@"Called checkKo");
    return NO;
} */


- (IBAction)playStone:(id)sender
{
    NSLog(@" The button's title is %@.", ((UIButton *)sender).currentTitle);
    
    //Get specific coordinates from title
    NSArray *coordinateArray = [((UIButton *)sender).currentTitle componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
    NSLog(@"Row coordingate: %@", coordinateArray[0]);
    NSLog(@"Columns coordinate: %@", coordinateArray[1]);
    
    //Alter array
    goBoard.goban[[coordinateArray[0] integerValue]][[coordinateArray[1] integerValue]] = @"x ";
                                                     
    //Print results
    [goBoard printBoardToConsole];
}

@end
