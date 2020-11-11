//
//  TestCellPresent.m
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import "TestCellPresent.h"

@interface TestCellPresent()
@property(nonatomic,strong)NSString *name;
@end
@implementation TestCellPresent
- (void)bindToCell:(TestCell *)cell{
    
    cell.textLabel.text = self.name;

}

- (NSString *)name{
    if (self.modle1) {
        _name = [self.modle1 title];
    }else{
        _name = [NSString stringWithFormat:@"大家好我是%@",[self.modle2 name]];
    }
    return  _name;
    
    
}
@end
