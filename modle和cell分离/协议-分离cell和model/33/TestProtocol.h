//
//  TestProtocol.h
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TestProtocol <NSObject>
@property(nonatomic,strong,readonly)NSString *content;
@end

NS_ASSUME_NONNULL_END
