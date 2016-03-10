//
//  PlayingCardViewController.m
//  Matching
//
//  Created by David Anglin on 3/10/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import "PlayingCardViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardViewController ()

@end

@implementation PlayingCardViewController

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
