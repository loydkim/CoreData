//
//  ViewController.m
//  CoreData
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController () {
    AppDelegate *appDelegate;
    NSManagedObjectContext *context;
    NSArray *dictionaries;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Get Context
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    context = appDelegate.persistentContainer.viewContext;
    
    // Save Data
    NSManagedObject *entityObj = [NSEntityDescription insertNewObjectForEntityForName:@"Data" inManagedObjectContext:context];
    [entityObj setValue:@"Winnipeg" forKey:@"city"];
    [entityObj setValue:@"CANADA" forKey:@"country"];
    [entityObj setValue:@"Loyd Kim" forKey:@"name"];
    
    [appDelegate saveContext];
    
    NSManagedObject *entityObj1 = [NSEntityDescription insertNewObjectForEntityForName:@"Data" inManagedObjectContext:context];
    [entityObj1 setValue:@"Toronto" forKey:@"city"];
    [entityObj1 setValue:@"CANADA" forKey:@"country"];
    [entityObj1 setValue:@"Other Kim" forKey:@"name"];
    
    [appDelegate saveContext];
    
    // Fet (Load) Data
    
    NSFetchRequest *requestExamLocation = [NSFetchRequest fetchRequestWithEntityName:@"Data"];
    NSArray *results = [context executeFetchRequest:requestExamLocation error:nil];
    
    // Log data
    
    NSLog(@"name is %@",[results valueForKey:@"name"]);
    NSLog(@"country is %@",[results valueForKey:@"country"]);
    NSLog(@"city is %@",[results valueForKey:@"city"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
