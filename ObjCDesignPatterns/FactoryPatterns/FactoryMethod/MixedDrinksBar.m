#import "MixedDrinksBar.h"
#import "RumAndCoke.h"
#import "WhiskeySour.h"
#import "JagerBomb.h"


@implementation MixedDrinksBar

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"Mixed Drinks Bar";
    }
    return self;
}

- (Beverage *)createBeverage:(NSString *)beverageType
{
    Beverage *beverage;
    
    if ([beverageType isEqualToString:@"RumAndCoke"]) {
        beverage = [[RumAndCoke alloc] init];
    } else if ([beverageType isEqualToString:@"WhiskeySour"]) {
        beverage = [[WhiskeySour alloc] init];
    } else if ([beverageType isEqualToString:@"JagerBomb"]) {
        beverage = [[JagerBomb alloc] init];
    }
    
    return beverage;
}

@end