#import <Foundation/Foundation.h>
#import "Dealer.h"
#import "StatPrinter.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Dealer *betty = [[Dealer alloc]init];
    
    int busts=0,on17=0,on18=0,on19=0,on20=0,on21=0,elses=0;
    int userInput, c=0;
    printf("Number of deals: ");
    scanf("%i",&userInput);
    while (c<userInput) {
        [betty selfDeal];
        c++;
        if (betty.handValue==17) {
            on17++;
        } else if(betty.handValue==18){
            on18++;
        } else if(betty.handValue==19){
            on19++;
        } else if(betty.handValue==20){
            on20++;
        } else if(betty.handValue==21){
            on21++;
        } else if(betty.handValue>21){
            busts++;
        } else if(betty.handValue<17) {
            elses++;
        }
    }
    
    int sum = on17+on18+on19+on20+on21+busts+elses;
    NSLog(@"Dealt 17:   %f%%",(float)on17/sum*100);
    NSLog(@"Dealt 18:   %f%%",(float)on18/sum*100);
    NSLog(@"Dealt 19:   %f%%",(float)on19/sum*100);
    NSLog(@"Dealt 20:   %f%%",(float)on20/sum*100);
    NSLog(@"Dealt 21:   %f%%",(float)on21/sum*100);
    NSLog(@"Busted:     %f%%",(float)busts/sum*100);
    NSLog(@"--------------------");
    NSLog(@"Total Deals:%i",sum);
    
    
    /*
    StatPrinter *skeeter = [[StatPrinter alloc]init];
    int userInput;
    printf("Number of Deals: ");
    scanf("%i",&userInput);
    [skeeter printCards:userInput];
    */ //Run Stat Printer

    [pool drain];
    return 0;
}

