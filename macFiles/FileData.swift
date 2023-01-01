//
//  FilesApp.swift
//  macFiles2
//
//  Created by Alejandro Garcia on 31/12/22.
//
// Datos a mostrar tras el escaneo del storage y que deben de actualizarse en el UI

import Foundation

class FileData: ObservableObject{
    @Published var running: Bool = false
    @Published var titulo: String = "titulo ejemplo"
    @Published var EnEjecucion: Bool = false
 
    
}
