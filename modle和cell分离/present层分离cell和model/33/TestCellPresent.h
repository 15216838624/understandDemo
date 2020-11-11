//
//  TestCellPresent.h
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import <UIKit/UIKit.h>
#import "TestCell.h"
#import "Modle1.h"
#import "Modle2.h"
NS_ASSUME_NONNULL_BEGIN
@interface TestCellPresent : NSObject
- (void)bindToCell:(TestCell *)cell;
@property(nonatomic,strong)Modle1 *modle1;
@property(nonatomic,strong)Modle2 *modle2;
@end

NS_ASSUME_NONNULL_END
