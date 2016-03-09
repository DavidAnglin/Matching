//
//  Card.m
//  Matching
//
//  Created by David Anglin on 3/8/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
