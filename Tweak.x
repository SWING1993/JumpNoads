#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface _TtC4Jump24JMHomeWrapViewController: UIViewController
- (void)showAlertController;
@end

%hook _TtC4Jump24JMHomeWrapViewController

- (void)viewDidLoad {
    //%log;
    %orig;
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"block-ad-alert"]) {
        [self showAlertController];
    }
}

%new
- (void)showAlertController {
    NSString *alertTitle = @"JUMP去广告插件";
    NSString *alertMessage = @"由SWING开发";
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *action = [UIAlertAction actionWithTitle:@"更多插件" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"block-ad-alert"];
		NSString *urlString = @"https://github.com/SWING1993";
        NSURL *url = [NSURL URLWithString:urlString];
		[[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }];
	[alertController addAction:action];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"不再提醒" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"block-ad-alert"];
    }];
    [alertController addAction:okAction];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

%end

%hook AdTroopBannerAd

- (void)loadAdData {
	%log;
}

- (id)initWithSlotID:(id)arg1 rootViewController:(id)arg2 adSize:(id)arg3 {
	%log;
	return nil;
}

%end

%hook AdTroopSDKManager
+ (void)registerAppID:(id)arg1 {
	%log;
}
%end

%hook AdTroopSplashAd

- (id)initWithSlotID:(id)arg1 {
	%log;
	return nil;
}

- (_Bool)isAdValid {
	%log;
	return false;
}

- (void)loadAdData {
	%log;
}

- (void)showAdWithViewController:(id)arg1 bottomView:(id)arg2 {
	%log;
}

%end

%hook BaiduMobAdView

- (void)start  {
	%log;
}

- (id)initWithFrame:(id)arg1 {
	%log;
	return nil;
}
%end

%hook BaiduMobAdUtils

+ (void)initialize {
	%log;
}
%end

%hook BaiduMobAdSplash

- (id)init {
	%log;
	return nil;
}
%end

%hook BUAdSDKManager
+ (void)startWithSyncCompletionHandler:(id)arg1 {
	%log;
}
+ (void)startWithAsyncCompletionHandler:(id)arg1 {
	%log;
}
+ (id)sharedInstance {
	%log;
	return nil;
}
%end

%hook CSJAdSDKManager

- (id)init {
	%log;
	return nil;
}
%end


%hook GDTAdManager

+ (id)defaultManager {
	%log;
	return nil;
}
+ (id)instanceWithAppId:(id)arg1 {
	%log;
	return nil;
}
+ (void)load {
	%log;
}

- (void)initLj16fa0  {
	%log;
}
- (id)init {
	%log;
	return nil;
}

%end

%hook GSAppConfig

+ (void)startDownloadPreloadAdVideos {
	%log;
}
+ (id)shared {
	%log;
	return nil;
}

%end

%hook GSLaunchAd
+ (id)init {
	%log;
	return nil;
}
%end


%hook SFAdSDKManager
+ (id)init {
	%log;
	return nil;
}
+ (id)defaultManager {
	%log;
	return nil;
}

+ (void)load {
	%log;
}

+ (void)requestAD:(id)arg1 {
	%log;
}

%end

%hook JgAdsSDK

+ (id)init {
	%log;
	return nil;
}

%end

%hook ADJgNetworkClient

+ (id)initWithBaseURL:(id)arg1 {
	%log;
	return nil;
}

%end

%hook ADJgRightsManager

+ (id)shared {
	%log;
	return nil;
}

%end

%hook ADJgSDKConfigModel

+ (id)init {
	%log;
	return nil;
}

%end
