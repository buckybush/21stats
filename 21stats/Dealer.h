#import <Foundation/Foundation.h>

@interface Dealer : NSObject{
    // Vars
    int totalDeals; // Number of times cards have been dealt
    int handValue; // Value of current hand
    int hasAce; // true if the hand has an ace valued at 11
    int bust; // true if dealer hand busted
    int blackjack; // true if dealer hits 21
}
@property int totalDeals,hasAce,handValue,bust,blackjack;

- (int)dealCard:(int)currentHandValue; // Deal a card
- (int)selfDeal; // Deal the dealer


@end
