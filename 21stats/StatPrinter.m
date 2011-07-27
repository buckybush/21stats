#import "StatPrinter.h"
#import "Dealer.h"

@implementation StatPrinter

- (void)printCards:(int)numOfDeals{
Dealer *frank = [[Dealer alloc]init];

int userInput=numOfDeals,c=0,cardDealt;
int ace=0,two=0,three=0,four=0,five=0,six=0,seven=0,eight=0,nine=0,ten=0;

while (c<userInput) {
    cardDealt=[frank dealCard:0];
    // NSLog(@"Card Dealt: %i",cardDealt);
    
    switch (cardDealt) {
        case 1:
            ace++;
            break;
        case 2:
            two++;
            break;
        case 3:
            three++;
            break;
        case 4:
            four++;
            break;
        case 5:
            five++;
            break;
        case 6:
            six++;
            break;
        case 7:
            seven++;
            break;
        case 8:
            eight++;
            break;
        case 9:
            nine++;
            break;
        case 10:
            ten++;
            break;
        case 11:
            ace++;
            break;
        default:
            break;
    }
    
    c++;
}


NSLog(@"Ace:   %f",(float)ace/userInput*100);
NSLog(@"Two:   %f",(float)two/userInput*100);
NSLog(@"Three: %f",(float)three/userInput*100);
NSLog(@"Four:  %f",(float)four/userInput*100);
NSLog(@"Five:  %f",(float)five/userInput*100);
NSLog(@"Six:   %f",(float)six/userInput*100);
NSLog(@"Seven: %f",(float)seven/userInput*100);
NSLog(@"Eight: %f",(float)eight/userInput*100);
NSLog(@"Nine:  %f",(float)nine/userInput*100);
NSLog(@"Ten:   %f",(float)ten/userInput*100);

NSLog(@"userInput=%i",userInput);

}

- (void)printDealerStats:(int)numOfDeals{
    Dealer *frank = [[Dealer alloc]init];
    
    [frank selfDeal];
}

- (id)init{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
