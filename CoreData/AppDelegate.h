//
//  AppDelegate.h
//  CoreData
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@end

