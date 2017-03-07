#import "TWRemotePreview.h"
#import "PureLayout/PureLayout.h"

@implementation TWRemotePreview

- (void)setWidth:(NSNumber *)width
{
  [self.remoteMediaView autoSetDimension:ALDimensionWidth toSize: [width intValue]];
}
@end
