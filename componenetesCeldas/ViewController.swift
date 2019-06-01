//
//  ViewController.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 5/31/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        let menu1 = self.fachadaMenu1()
        let menu2 = self.fachadaMenu2()
        let menus = [menu1, menu2]
        
        let vc = BBVAIntranet_Somos_Comedores_Menu_ViewController(menus: menus)
        self.present(vc, animated: true, completion: nil)
    }
    
    
}

extension ViewController {
    func fachadaMenu2() ->  BBVAIntranet_Somos_Comedores_Menu {
        let soup0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Sopa de germen2", 29, BBVAIntranet_Somos_Comedores_Menu_DishType("SOUP", 1), 208)
        let soup1 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Consome2", 0, nil, nil)
        
        let complement0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Rajas de pimientos2", 97, BBVAIntranet_Somos_Comedores_Menu_DishType("COMPLEMENT2", 2), 209)
        
        let mainCourse0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Bistek de res a la ranchera2", 400, BBVAIntranet_Somos_Comedores_Menu_DishType("MAIN_COURSE_ONE2", 3), 210)
        let mainCourse1 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Picadillo de lenteja2", 202, BBVAIntranet_Somos_Comedores_Menu_DishType("MAIN_COURSE_TWO2", 4), 211)
        let mainCourse2 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Bistek a la parrilla2", 0, nil, nil)
        let mainCourse3 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Pechuga a la parrilla2", 0, nil, nil)
        let mainCourse4 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Pescado a la parrilla2", 0, nil, nil)
        let mainCourse5 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Simple", 0, nil, nil)
        
        let bean0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Negros de la olla2", 150, BBVAIntranet_Somos_Comedores_Menu_DishType("BEANS2", 5), 212)
        
        let salad0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Rallada con roquefort2", 0, BBVAIntranet_Somos_Comedores_Menu_DishType("SALAD2", 6), 213)
        
        let bread0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Integral2", 160, BBVAIntranet_Somos_Comedores_Menu_DishType("BREAD2", 7), 214)
        
        let dessert0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Dulce de tamarindo2", 342, BBVAIntranet_Somos_Comedores_Menu_DishType("DESSERT2", 8), 215)
        
        let water0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("De guayaba rosa2", 213, BBVAIntranet_Somos_Comedores_Menu_DishType("WATER2", 9), 216)
        
        let menu = BBVAIntranet_Somos_Comedores_Menu()
        menu.Soups = [soup0, soup1]
        menu.Complements = [complement0]
        menu.MainCourses = [mainCourse0, mainCourse1, mainCourse2, mainCourse3, mainCourse4, mainCourse5]
        menu.Beans = [bean0]
        menu.Salads = [salad0]
        menu.Desserts = [dessert0]
        menu.Breads = [bread0]
        menu.Waters = [water0]
        
        return menu
        
    }
    func fachadaMenu1() ->  BBVAIntranet_Somos_Comedores_Menu {
        let soup0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Sopa de germen", 29, BBVAIntranet_Somos_Comedores_Menu_DishType("SOUP", 1), 208)
        let soup1 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Consome", 0, nil, nil)
        
        let complement0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Rajas de pimientos", 97, BBVAIntranet_Somos_Comedores_Menu_DishType("COMPLEMENT", 2), 209)
        
        let mainCourse0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Bistek de res a la ranchera", 400, BBVAIntranet_Somos_Comedores_Menu_DishType("MAIN_COURSE_ONE", 3), 210)
        let mainCourse1 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Picadillo de lenteja", 202, BBVAIntranet_Somos_Comedores_Menu_DishType("MAIN_COURSE_TWO", 4), 211)
        let mainCourse2 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Bistek a la parrilla", 0, nil, nil)
        let mainCourse3 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Pechuga a la parrilla", 0, nil, nil)
        let mainCourse4 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Pescado a la parrilla", 0, nil, nil)
        let mainCourse5 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Simple", 0, nil, nil)
        
        let bean0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Negros de la olla", 150, BBVAIntranet_Somos_Comedores_Menu_DishType("BEANS", 5), 212)
        
        let salad0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Rallada con roquefort", 0, BBVAIntranet_Somos_Comedores_Menu_DishType("SALAD", 6), 213)
        
        let bread0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Integral", 160, BBVAIntranet_Somos_Comedores_Menu_DishType("BREAD", 7), 214)
        
        let dessert0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("Dulce de tamarindo", 342, BBVAIntranet_Somos_Comedores_Menu_DishType("DESSERT", 8), 215)
        
        let water0 = BBVAIntranet_Somos_Comedores_Menu_Platillo("De guayaba rosa", 213, BBVAIntranet_Somos_Comedores_Menu_DishType("WATER", 9), 216)
        
        let menu = BBVAIntranet_Somos_Comedores_Menu()
        menu.Soups = [soup0, soup1]
        menu.Complements = [complement0]
        menu.MainCourses = [mainCourse0, mainCourse1, mainCourse2, mainCourse3, mainCourse4, mainCourse5]
        menu.Beans = [bean0]
        menu.Salads = [salad0]
        menu.Desserts = [dessert0]
        menu.Breads = [bread0]
        menu.Waters = [water0]
        
        return menu
    }
}

