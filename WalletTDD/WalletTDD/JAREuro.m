//
//  JAREuro.m
//  WalletTDD
//
//  Created by Juan Arillo Ruiz on 25/7/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JAREuro.h"

@interface JAREuro()
@property(nonatomic) NSInteger amount;
@end

@implementation JAREuro

-(id) initWithAmount:(NSInteger) amount{
    
    if (self = [super init]){
        _amount = amount;
    }
    
    return self;
    
}

-(JAREuro*) times: (NSInteger) multiplier{
    
    JAREuro *newEuro = [[JAREuro alloc]initWithAmount:self.amount * multiplier];
    
    return newEuro;
    
}

#pragma mark - Overwritten

-(BOOL)isEqual:(id)object{
    
    return [self amount] == [object amount];
    
}

@end
