//
//  Friend+CoreDataProperties.swift
//  toomany
//
//  Created by adhoc on 13/09/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Friend {

    @NSManaged var name: String?
    @NSManaged var messages: NSSet?

}
