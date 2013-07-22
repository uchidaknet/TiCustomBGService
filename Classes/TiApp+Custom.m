//
//  TiApp+Custom.m
//  TiCustomBGService
//
//  Created by Keisuke Uchida on 2013/07/22.
//
//

#import "TiApp+Custom.h"

@implementation TiApp (Custom)

-(void)customRegisterBackgroundService:(TiProxy*)proxy
{
    backgroundServices = [[NSMutableArray alloc] initWithCapacity:1];
    
    if (![backgroundServices containsObject:proxy]) {
        [backgroundServices addObject:proxy];
    }
}

@end
