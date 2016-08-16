//
//  ViewController.h
//  FirebaseDemo
//
//  Created by Felix ITs 01 on 13/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#define KRootURL @"https://batchweekend9am.firebaseio.com/"
#define KStudentDataURL @"https://batchweekend9am.firebaseio.com/studentdata"



#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>


@interface ViewController : UIViewController
{
    NSDictionary *studentDictionary;
    NSMutableArray *students;
}


@end

