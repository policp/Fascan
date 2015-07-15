//
//  ViewController.m
//  Fascan
//
//  Created by chenpeng on 15/7/15.
//  Copyright (c) 2015年 chenpeng. All rights reserved.
//

#import "ViewController.h"
#import "FSCalendar.h"
@interface ViewController ()<FSCalendarDataSource,FSCalendarDelegate>
@property (strong , nonatomic) FSCalendar *calendar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FSCalendar *calendar = [[FSCalendar alloc] initWithFrame:CGRectMake(20, 0, 320, 300)];
    calendar.dataSource = self;
    calendar.delegate = self;
//    calendar.appearance.cellStyle=FSCalendarCellStyleRectangle;
    [self.view addSubview:calendar];
    self.calendar = calendar;
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)calendar:(FSCalendar *)calendar didSelectDate:(NSDate *)date
{
    NSDateFormatter *formate=[[NSDateFormatter alloc]init];
    [formate setDateFormat:@"yyyy-MM-dd"];
    NSString *Str=[formate stringFromDate:date];
    // Do something
}
//- (NSString *)calendar:(FSCalendar *)calendar subtitleForDate:(NSDate *)date
//{
//    
//    return nil;
//}
//- (UIImage *)calendar:(FSCalendar *)calendar imageForDate:(NSDate *)date
//{
//    UIImage *image=[UIImage imageNamed:@"20085722191339_2.jpg"];
//    return image;
//}
//- (NSDate *)minimumDateForCalendar:(FSCalendar *)calendar
//{
//    return yourMinimumDate;
//}
//
//- (NSDate *)maximumDateForCalendar:(FSCalendar *)calendar
//{
//    return yourMaximumDate;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}

@end
