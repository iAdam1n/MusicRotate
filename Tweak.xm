#import <UIKit/UIWindow.h>

%hook UIWindow
-(bool)_shouldAutorotateToInterfaceOrientation:(long long)arg1 checkForDismissal:(bool)arg2 isRotationDisabled:(bool*)arg3 {
	return TRUE;
}
%end
