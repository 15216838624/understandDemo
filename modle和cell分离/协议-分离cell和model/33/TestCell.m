//
//  TestCell.m
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import "TestCell.h"

@implementation TestCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



- (void)setModle:(id<TestProtocol>)modle{
    self.textLabel.text  = modle.content;
}
@end
