//
//  Order+CoreDataProperties.swift
//  PizzaOrder
//
//  Created by Mikhailov on 15.10.2020.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var status: String?
    @NSManaged public var id: UUID?
    @NSManaged public var numberOfSlies: Int16
    @NSManaged public var pizzaType: String?
    @NSManaged public var tableNumber: String?

}

extension Order : Identifiable {

}
