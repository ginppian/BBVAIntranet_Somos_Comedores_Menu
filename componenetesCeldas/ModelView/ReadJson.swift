//
//  ReadJson.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/2/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation

public class ReadJson: NSObject {
    
    
    public class func from(file: String) -> [BBVAIntranet_Somos_Comedores_Menu] {
        
        var comedores = [BBVAIntranet_Somos_Comedores_Menu]()
        
        if let urlPath = Bundle.main.url(forResource: file, withExtension: "json") {
            
            do {
                let jsonData = try Data(contentsOf: urlPath, options: .mappedIfSafe)
                
                if let arrJsonDict = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? [NSDictionary] {
                    print(arrJsonDict)
                    for json in arrJsonDict {
                        print(json)
                        let menu = BBVAIntranet_Somos_Comedores_Menu(json: json)
                        comedores.append(menu)
                    }
                }
            }
                
            catch let jsonError {
                print(jsonError)
            }
        }
        return comedores
    }
}


