//
//  BBVAIntranet_Somos_Comedores_Tipo.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/1/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

enum BBVAIntranet_Somos_Comedores_Menu_Secciones: Int, CaseIterable {
    case cabecera = 0
    case menuComida = 1
}

enum BBVAIntranet_Somos_Comedores_Tipo: Int, CaseIterable {
    case sopa = 0
    case complementos = 1
    case platoPrincipal = 2
    case frijoles = 3
    case ensaladas = 4
    case pan = 5
    case postre = 6
    case agua = 7
}
