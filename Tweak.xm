#import <UIKit/UIWindow.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIViewController.h>

%hook UIWindow
-(bool)_shouldAutorotateToInterfaceOrientation:(long long)arg1 checkForDismissal:(bool)arg2 isRotationDisabled:(bool*)arg3 {
	return TRUE;
}
%end
