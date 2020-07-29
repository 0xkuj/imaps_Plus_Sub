/*
* Created by 0xkuj
*/

@class iMaps_Plus;

@interface RPSubscriptionService
@end

%hook classHookName
-(bool)hasPreviouslySubscribed {
	%orig;
	return TRUE;
}
-(bool)hasActiveSubscription {
	%orig;
	return TRUE;
}
%end

%ctor
{
    %init(classHookName = objc_getClass("iMaps_Plus.RPSubscriptionService"));
}

