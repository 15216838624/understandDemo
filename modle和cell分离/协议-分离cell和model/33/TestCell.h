//
//  TestCell.h
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import <UIKit/UIKit.h>
#import "TestProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface TestCell : UITableViewCell
@property(nonatomic,strong)id<TestProtocol>modle;
@end

NS_ASSUME_NONNULL_END
