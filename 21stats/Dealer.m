#import "Dealer.h"

@implementation Dealer
@synthesize totalDeals,hasAce,handValue,bust,blackjack;

- (int)dealCard:(int)currentHandValue{
    int h = currentHandValue;
    int x; // declare int for return
    int r = (arc4random() % 13)+1; // Create random num between 1 and 13

    // 1 = Ace (11 or 1 if you bust with 11)
    if(r==1){
        if((h+11)>21){
            x=1;
        }else{
            x=11;
            self.hasAce=1;
        }
    }else if(r>1&&r<11){ // 2 - 10 are face value
        x=r;
    }else if(r>=10&&r<=13){ // JQK are all 10
        x=10;
    }else{
        x=-1;
    }
    return x; // Return value of card dealt
}


- (int)selfDeal{
    int c1=[self dealCard:self.handValue];
    int c2=[self dealCard:self.handValue];
    // NSLog(@"Card 1: %i",c1);
    // NSLog(@"Card 2: %i",c2);
    self.handValue=c1+c2;
    // NSLog(@"Starting hand: %i",self.handValue);
    
    
    while (self.handValue<17) {
        self.handValue+=[self dealCard:self.handValue];
        // NSLog(@"handValue = %i",self.handValue);
        if (self.handValue>21) {
            if (self.hasAce) {
                self.handValue-=10;
                self.hasAce=0;
            }
        }
        if(self.handValue>21){
            self.bust=1;
        }else if(self.handValue==21){
                self.blackjack=1;
        }
    }
self.totalDeals++;
return self.handValue;
}

- (id)init
{
    self = [super init];
    if (self) {
        hasAce=0;
        bust=0;
        blackjack=0;
        handValue=0;
        totalDeals=0;
    }
    
    return self;
}

@end
