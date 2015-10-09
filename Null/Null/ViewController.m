//
//  ViewController.m
//  Null
//
//  Created by fans on 15/10/9.
//  Copyright (c) 2015年 FF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int memberInt;
    UIView * memberObj;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testDefaultValue];
    
    [self testNullAndOtherValue];
    
}
- (void)testDefaultValue{
    int localInt;
    UIView * localObj;
    // 基本类型 局部
    if (0 == localInt){
        NSLog(@"localInt value is 0");
    }
    if (localInt) {
        NSLog(@"localInt value not 0");
    }
    
    NSLog(@"localInt:%d",localInt);
    
    // 基本类型 类成员
    if (0 == memberInt){
        NSLog(@"memberInt value is 0");
    }
    if (memberInt) {
        NSLog(@"memberInt valur not 0");
    }
    NSLog(@"memberInt:%d",memberInt);
    
    // 对象 局部
    if (0 == localObj) {
        NSLog(@"localObj value is 0");
    }
    if (nil == localObj) {
        NSLog(@"localObj value is nil");
    }
    if (localObj) {
        NSLog(@"localObj value not nil");
    }
    NSLog(@"localObj : %@",localObj);
    
    // 对象 类成员
    if (0 == memberObj){
        NSLog(@"memberObj value is 0");
    }
    if (nil == memberObj) {
        NSLog(@"memberObj value is nil");
    }
    if (memberObj) {
        NSLog(@"memberObj value not nil");
    }
    NSLog(@"memberObj:%@",memberObj);
}
/*
 零值
 空值nil，NULL，Nil，NSNull
 --nil是Oc中对象指针的空值，常用在给对象赋初值。
 --NULL是基本数据类型指针的空值，例如：int *k ＝ NULL;
 --Nil是类指针为空；
 --NSNull is a class for objects that represent null. In fact, there’s only one object, namely the one returned by +[NSNull null]. It is different from nil because nil is a literal null value, i.e., it isn’t an object. The single instance of NSNull, on the other hand, is a proper object.
 --NSNull is often used in Foundation collections since they cannot store nil values. In the case of dictionaries, -objectForKey: returns nil to indicate that a given key has no corresponding object in the dictionary, i.e., the key hasn’t been added to the dictionary. If you want to make it explicit that you have a certain key but it doesn’t have a value yet, you can use [NSNull null].For instance, the following throws an exception because dictionaries cannot store nil values:
 
 NSMutableDictionary * dict = [NSMutableDictionary dictionary];
 [dict setObject:nil forKey:@"someKey"];
 On the other hand, the following code is valid since [NSNull null] is a non-nil object;
 NSMutableDictionary *dict = [NSMutableDictionary dictionary];
 [dict setObject:[NSNull null] forKey:@"someKey"];
 It’s worth mentioning that Foundation collections have initialisers that use nil as a marker for the end of a list of objects without having to specify the number of elements in the list. This can only happen because nil cannot be stored in a Foundation collection. For instance,
 NSArray *array = [NSArray arrayWithObjects:@"one", @"two", nil nil];
 
 */
- (void)testNullAndOtherValue{
    
    UIView * view ;
    view = nil;
    if (0 == view) {
        NSLog(@"view can equal 0");
    }
    if (NULL == 0) {
        NSLog(@"NULL equal 0");
    }
    if (Nil == 0) {
        NSLog(@"Nil equal 0");
    }
    if (nil ==  0) {
        NSLog(@"nil equal 0");
    }
    NSLog(@"nil:%@ Nil:%@ NULL:%@",nil,Nil, NULL);
    
    if (0 == [NSNull null] || nil == [NSNull null]) {
        NSLog(@"NSNull rqual 0");
    }else{
        NSLog(@"NSNull null is sepacially object represent null");
    }
    NSLog(@"%@",[NSNull null]);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
