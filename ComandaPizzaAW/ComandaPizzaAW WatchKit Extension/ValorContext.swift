//
//  ValorContext.swift
//  ComandaPizzaAW
//
//  Created by Marcos on 8/12/16.
//  Copyright © 2016 MSR. All rights reserved.
//

import WatchKit

class ValorContext: NSObject {

    var pizza = Pizza()
    
    init( p : Pizza) {
     pizza = p
    }
}
