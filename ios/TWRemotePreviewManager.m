#import <React/UIView+React.h>

@import TwilioVideo;
#import "TWRemotePreviewManager.h"
#import "PureLayout/PureLayout.h"
#import "TWVideoModule.h"
#import "TWRemotePreview.h"

@interface TWRemotePreviewManager()

@end

@implementation TWRemotePreviewManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(width, NSNumber)

-(void)dealloc{

}

-(instancetype)init{
  if(self = [super init]){

  }
  return self;
}

- (UIView *)view

{

  TWRemotePreview* view = [[TWRemotePreview alloc] init];

  TWVideoModule* videoModule = [self.bridge moduleForName:@"TWVideoModule"];
  view.remoteMediaView = videoModule.remoteMediaView;

  if (videoModule) {
    [videoModule.remoteMediaView removeFromSuperview];
    [view addSubview:videoModule.remoteMediaView];
    [videoModule.remoteMediaView autoCenterInSuperview];
    [videoModule.remoteMediaView autoPinEdgeToSuperviewEdge:ALEdgeTop];
    [videoModule.remoteMediaView autoPinEdgeToSuperviewEdge:ALEdgeBottom];

  }

  return view;

}

@end
