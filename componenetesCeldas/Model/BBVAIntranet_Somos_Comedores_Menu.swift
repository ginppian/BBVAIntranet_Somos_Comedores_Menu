//
//  BBVAIntranet_Somos_Comedores_Menu_Clase.swift
//  MenuSomos
//
//  Created by Gmo Ginppian on 5/29/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation

public class BBVAIntranet_Somos_Comedores_Menu: NSObject {
    
    var noPlatillos: Int {
        get {
            return 8
        }
    }
    
    fileprivate var soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var date: String?
    
    init(_ soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ date: String) {
        
        self.soups = soups
        self.complements = complements
        self.mainCourses = mainCourses
        self.beans = beans
        self.salads = salads
        self.breads = breads
        self.desserts = desserts
        self.waters = waters
        self.date = date
    }
    
    convenience public init(json: NSDictionary) {
        
        let soupsRow = json["soups"] as? [NSDictionary] ?? [NSDictionary]()
        var soups = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for soupRow in soupsRow {
            let soup = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: soupRow)
            soups.append(soup)
        }
        
        let complementsRow = json["complements"] as? [NSDictionary] ?? [NSDictionary]()
        var complements = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for complementRow in complementsRow {
            let complement = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: complementRow)
            complements.append(complement)
        }
        
        let mainCoursesRow = json["mainCourses"] as? [NSDictionary] ?? [NSDictionary]()
        var mainCourses = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for mainCourseRow in mainCoursesRow {
            let mainCourse = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: mainCourseRow)
            mainCourses.append(mainCourse)
        }
        
        let beansRow = json["beans"] as? [NSDictionary] ?? [NSDictionary]()
        var beans = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for beanRow in beansRow {
            let bean = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: beanRow)
            beans.append(bean)
        }
        
        let saladsRow = json["salads"] as? [NSDictionary] ?? [NSDictionary]()
        var salads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for saladRow in saladsRow {
            let salad = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: saladRow)
            salads.append(salad)
        }
        
        let breadsRow = json["breads"] as? [NSDictionary] ?? [NSDictionary]()
        var breads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for breadRow in breadsRow {
            let bread = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: breadRow)
            breads.append(bread)
        }
        
        let dessertsRow = json["desserts"] as? [NSDictionary] ?? [NSDictionary]()
        var desserts = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for dessertRow in dessertsRow {
            let dessert = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: dessertRow)
            desserts.append(dessert)
        }
        
        let watersRow = json["waters"] as? [NSDictionary] ?? [NSDictionary]()
        var waters = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        for waterRow in watersRow {
            let water = BBVAIntranet_Somos_Comedores_Menu_Platillo(json: waterRow)
            waters.append(water)
        }

        let date = json["date"] as? String ?? String()
        
        self.init(soups, complements, mainCourses, beans, salads, breads, desserts, waters, date)
    }
    
    override public init() {
        super.init()
        
        self.soups = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.complements = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.mainCourses = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.beans = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.salads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.breads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.desserts = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.waters = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.date = String()
    }
    
//    var soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var date: String?
    
    public var Soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.soups ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.soups = newValue
        }
    }
    
    public var Complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.complements ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.complements = newValue
        }
    }
    
    public var MainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.mainCourses ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.mainCourses = newValue
        }
    }
    
    public var Beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.beans ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.beans = newValue
        }
    }
    
    public var Salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.salads ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.salads = newValue
        }
    }
    
    public var Breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.breads ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.breads = newValue
        }
    }
    
    public var Desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.desserts ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.desserts = newValue
        }
    }
    
    public var Waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.waters ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.waters = newValue
        }
    }
    
    public var Date: String {
        get {
            return self.date ?? String()
        }
        set {
            self.date = newValue
        }
    }
    
    override public var description: String {
        var _description = "\n"
        
        _description += "soups: \(String(describing: self.soups?.description ?? String.Empty))\n"
        _description += "complements: \(String(describing: self.complements?.description ?? String.Empty))\n"
        _description += "mainCourses: \(String(describing: self.mainCourses?.description ?? String.Empty))\n"
        _description += "beans: \(String(describing: self.beans?.description ?? String.Empty))\n"
        _description += "salads: \(String(describing: self.salads?.description ?? String.Empty))\n"
        _description += "breads: \(String(describing: self.breads?.description ?? String.Empty ))\n"
        _description += "desserts: \(String(describing: self.desserts?.description ?? String.Empty ))\n"
        _description += "waters: \(String(describing: self.waters?.description ?? String.Empty ))\n"
        _description += "date: \(String(describing: self.date ?? String.Empty ))\n"
        
        return _description
    }
}
