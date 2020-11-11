//
//  ViewController.m
//  33
//
//  Created by 韩李涛 on 2020/10/19.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "TestCell.h"
#import "Modle1.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    UITableView *tableview = [[UITableView alloc]init];
    tableview.backgroundColor = [UIColor yellowColor];
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
        Modle1 *model1 =[[Modle1 alloc]init];
        model1.title = @"测试";
        [self.array addObject:model1];
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
       
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SecViewController *sec = [[SecViewController alloc]init];
    [self presentViewController:sec animated:YES completion:nil];
}
@end
