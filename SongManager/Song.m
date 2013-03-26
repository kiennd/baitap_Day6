//
//  Song.m
//  SongManager
//
//  Created by KIENND on 3/26/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Song.h"

@implementation Song

-(id) init:(NSString*) singer
     Title:(NSString*) title
      Year:(NSInteger) year
     Genre:(NSString*) genre
{
    
    self= [super init];
    if(self){
        self.singer = singer;
        self.title = title;
        self.year = year;
        self.genre = genre;
    }
    return self;
}

-(NSString*) description{
    return [[NSString alloc] initWithFormat:@" singer: %@\n title:%@\n year %d\n genre %@",self.singer,self.title,self.year,self.genre ];
}


@end
