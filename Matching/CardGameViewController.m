//
//  CardGameViewController.m
//  Matching
//
//  Created by David Anglin on 3/8/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()

@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *modeSelector;


@end

@implementation CardGameViewController

- (CardMatchingGame *)game
{
    if (!_game)
    {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck:[self createDeck]];
    [self changeModeSelector:self.modeSelector];
    }
    return _game;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)dealButtonPressed:(UIButton *)sender
{
    self.modeSelector.enabled = YES;
    self.game = nil;
    [self updateUI];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    self.modeSelector.enabled = NO;
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (IBAction)changeModeSelector:(UISegmentedControl *)sender {
    self.game.maxMatchingCards = [[sender titleForSegmentAtIndex:sender.selectedSegmentIndex] integerValue];
}

-(void) updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        NSUInteger cardIndex = [self.cardButtons indexOfObject: cardButton];
        Card *card = [self.game cardAtIndex: cardIndex];
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score];
}

- (NSString *) titleForCard: (Card *) card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *) backgroundImageForCard: (Card *) card
{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
