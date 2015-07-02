#import <UIKit/UIWindow.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIViewController.h>

%hook UIWindow
-(bool)isInterfaceAutorotationDisabled {
	return FALSE;
}
-(bool)_shouldAutorotateToInterfaceOrientation:(long long)arg1 checkForDismissal:(bool)arg2 isRotationDisabled:(bool*)arg3 {
	return TRUE;
}
%end

%hook UIInputWindowController
-(bool)setInterfaceAutorotationDisabled {
	return FALSE;
}
%end

%hook UIMovieScrubber
-(bool)setRotationDisabled {
	return FALSE;
}
%end

%hook UIViewController
-(bool)_isInterfaceAutorotationDisabled {
	return FALSE;
}
%end

%hook UIApplication
-(bool)_rotationDisabledDuringTouch {
	return FALSE;
}
-(bool)_setRotationDisabledDuringTouch {
	return FALSE;
}
-(bool)_isAutorotationDisabledForAppWindows {
	return FALSE;
}
%end