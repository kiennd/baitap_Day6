//
//  Song.h
//  SongManager
//
//  Created by KIENND on 3/26/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject
@property (strong) NSString* singer;
@property (strong) NSString* title;
@property (assign) NSInteger year;
@property (strong) NSString* genre;

-(id) init:(NSString*) singer
     Title:(NSString*) title
      Year: (NSInteger) year
     Genre:(NSString*) genre;



@end
