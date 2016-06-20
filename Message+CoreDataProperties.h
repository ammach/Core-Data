//
//  Message+CoreDataProperties.h
//  toomany
//
//  Created by adhoc on 14/09/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Message.h"

NS_ASSUME_NONNULL_BEGIN

@interface Message (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *date;
@property (nullable, nonatomic, retain) NSString *text;
@property (nullable, nonatomic, retain) Friend *friend;

@end

NS_ASSUME_NONNULL_END
