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
    case fecha = 0
    case sopa = 1
    case complementos = 2
    case platoPrincipal = 3
    case frijoles = 4
    case ensaladas = 5
    case pan = 6
    case postre = 7
    case agua = 8
}

enum BBVAIntranet_Somos_Comedores_Tipo_Str: String {
    case sopa = "SOPA"
    case complementos = "COMPLEMENTO"
    case platoPrincipal = "PLATO FUERTE"
    case frijoles = "FRIJOLES"
    case ensaladas = "ENSALADA"
    case pan = "PAN"
    case postre = "POSTRE"
    case agua = "AGUA"
}

