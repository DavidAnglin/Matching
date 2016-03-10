//
//  CardMatchingGame.h
//  Matching
//
//  Created by David Anglin on 3/9/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
- (instancetype) initWithCardCount: (NSUInteger)count
                         usingDeck: (Deck *) deck;

- (void)chooseCardAtIndex: (NSUInteger) index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;
@property (nonatomic) NSUInteger maxMatchingCards;


@end
