//
//  CardGameViewController.h
//  Matching
//
//  Created by David Anglin on 3/8/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//
//Abstract class. Must implement methods as described below.

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

//protected
//for subclasses
- (Deck *) createDeck; //abstract

@end

