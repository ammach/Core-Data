//
//  Friend.swift
//  toomany
//
//  Created by adhoc on 14/09/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//

import Foundation
import CoreData


class Friend: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    func addMessage(message:Message){
        let messages=self.mutableSetValueForKey("messages")
        messages.addObject(message)
    }
}
