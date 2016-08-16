//
//  ViewController.m
//  FirebaseDemo
//
//  Created by Felix ITs 01 on 13/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Firebase *rootRef = [[Firebase alloc]initWithUrl:KRootURL];
    
    Firebase *studentRef = [[Firebase alloc]initWithUrl:KStudentDataURL];
    
//    NSDictionary *rootDictionary = [[NSDictionary alloc]initWithObjects:@[@"students",@"courses"] forKeys:@[@"studentdata",@"coursedata"]];
    
    
    
    
//    [rootRef setValue:rootDictionary withCompletionBlock:^(NSError *error, Firebase *ref) {
//        if (error) {
//            NSLog(@"%@",error.localizedDescription);
//        }
//        else {
//            NSLog(@"Successfully pushed data to firebase.");
//        }
//    }];
    
    
//    NSDictionary *studentDic = [[NSDictionary alloc]initWithObjects:@[@"Indrajeet",@"123",@"Pune",@"A+",@"9898767654"] forKeys:@[@"name",@"student_id",@"place",@"grade",@"contact_number"]];
//    
//    NSLog(@"%@",studentDic);
//    
//    
//    [studentRef setValue:studentDic withCompletionBlock:^(NSError *error, Firebase *ref) {
//        if (error) {
//            NSLog(@"%@",error.localizedDescription);
//        }
//        else {
//            NSLog(@"Successfully pushed data to firebase.");
//        }
//    }];
    
    
    
    
    [studentRef observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        
        NSDictionary *dicFromFirebase = snapshot.value;
        
        NSLog(@"%@",dicFromFirebase);
        
        NSLog(@"%@",[dicFromFirebase valueForKey:@"grade"]);
        
        
    } withCancelBlock:^(NSError *error) {
        NSLog(@"%@",error.localizedDescription);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
