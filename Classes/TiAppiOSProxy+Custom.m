//
//  TiAppiOSProxy+Custom.m
//  TiCustomBGService
//
//  Created by Keisuke Uchida on 2013/07/22.
//
//

#import "TiAppiOSProxy+Custom.h"
#import "TiApp+Custom.h"

@implementation TiAppiOSProxy (Custom)

-(id)customRegisterBackgroundService:(id)args
{
	NSDictionary* a;
	ENSURE_ARG_AT_INDEX(a, args, 0, NSDictionary)
	
	NSString* urlString = [[TiUtils toURL:[a objectForKey:@"url"] proxy:self]absoluteString];
	
	if ([urlString length] == 0) {
		return nil;
	}
	
	backgroundServices = [[NSMutableDictionary alloc]init];
	
	TiAppiOSBackgroundServiceProxy *proxy = [backgroundServices objectForKey:urlString];
	
	proxy = [[[TiAppiOSBackgroundServiceProxy alloc] _initWithPageContext:[self executionContext] args:args] autorelease];
	[backgroundServices setValue:proxy forKey:urlString];
	
	[[TiApp app] customRegisterBackgroundService:proxy];
	return proxy;
}

@end
