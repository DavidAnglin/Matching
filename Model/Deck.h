//
//  Deck.h
//  Matching
//
//  Created by David Anglin on 3/9/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard: (Card *)card atTop:(BOOL)atTop;
- (void) addCard: (Card *)card;

- (Card *)drawRandomCard;

@end
