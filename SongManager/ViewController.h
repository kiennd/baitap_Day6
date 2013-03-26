//
//  ViewController.h
//  SongManager
//
//  Created by iOS12 on 3/24/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Song.h"
@interface ViewController : UIViewController

{
    NSMutableSet* _songList;
    Song* _song;
    IBOutlet UITextField* titleTf;
    IBOutlet UITextField* singerTf;
    IBOutlet UITextField* yearTf;
    IBOutlet UITextField* genreTf;
    IBOutlet UILabel* lb1;
    IBOutlet UILabel* lb2;
    IBOutlet UILabel* lb3;
    IBOutlet UILabel* lb4;
}

@end
