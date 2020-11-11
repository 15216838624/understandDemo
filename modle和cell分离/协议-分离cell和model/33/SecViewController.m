//
//  SecViewController.m
//  33
//
//  Created by 韩李涛 on 2020/11/11.
//

#import "SecViewController.h"
#import "TestCell.h"
#import "Modle2.h"
@interface SecViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray *array;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
      UITableView *tableview = [[UITableView alloc]init];
      tableview.backgroundColor = [UIColor redColor];
      [self.view addSubview: tableview];
      tableview.frame = self.view.frame;
      tableview.dataSource = self;
      tableview.delegate = self;
      [tableview registerClass:[TestCell class] forCellReuseIdentifier:@"cell"];
      self.array = [NSMutableArray array];
      [self loaddata];
}
- (void)loaddata{
    
    for (int i=0;i<20;i++){
        Modle2  *model2 =[[Modle2 alloc]init];
        model2.name = @"测试22222222222";
        [self.array addObject:model2];
    }
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.backgroundColor = [UIColor clearColor];
    cell.modle = [self.array objectAtIndex:indexPath.row];
    return cell;
}
     
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
