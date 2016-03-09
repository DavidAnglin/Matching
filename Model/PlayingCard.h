//
//  PlayingCard.h
//  Matching
//
//  Created by David Anglin on 3/9/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;


@end
