//
//  ViewController.m
//  SongManager
//
//  Created by iOS12 on 3/24/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)writeToPlist:(NSString*) filePath array: (NSArray*)plistDict
{
    [plistDict writeToFile:filePath atomically: YES];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *genreList = [[NSArray alloc] initWithObjects:@"Pop",@"Rock",@"Jazz", @"Country", @"Classic", nil];
    
    NSString* path= [[NSBundle mainBundle]pathForResource:@"Song" ofType:@"plist"];
    NSLog(@"%@",path);
    
    
    Song* sl; 
    // tao du lieu
    _songList = [[NSMutableSet alloc] initWithObjects: nil];
    for (int i=0; i<10; i++) {
        
        sl = [[Song alloc] init:[@"singer" stringByAppendingFormat:@"%d",i%4]
                            Title:[@"title " stringByAppendingFormat:@"%d",i]
                             Year:1992+i%3
                            Genre:genreList[i%5]];
        [_songList addObject:sl];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}


- (IBAction)searchAction:(id)sender {
    NSString* title = [titleTf text];
    NSString* singer =[singerTf text];
    NSString* year =  [yearTf text] ;
    NSString* genre = [genreTf text];
    
    NSMutableSet *setTmp =  [[NSMutableSet alloc] initWithArray:[_songList allObjects]];
    
    for(Song* s in setTmp){
        if([singer length]>0){
            if([s.singer compare:singer]!=0){
                continue;
            }
        }
        if([title length]>0){
            if([s.title compare:title]!=0){
                continue;
            }
        }
        if([genre length]>0){
            if([s.genre compare:genre]!=0){
                continue;
            }
        }
        if([year length]>0){
            if(s.year != [year intValue]){
                continue;
            }
        }
        [lb1 setText:s.title];
        [lb2 setText:s.singer];
        [lb3 setText:[NSString stringWithFormat:@"%d",s.year]];
        [lb4 setText:s.genre];
        
    }
    
}


@end
