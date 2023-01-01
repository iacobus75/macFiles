//
//  MenuView.swift
//  macFiles2
//
//  Created by Alejandro Garcia on 31/12/22.
//

import SwiftUI

struct MenuView: View {
    @State private var buttonStartTitle: String = "Start"
    @State private var buttonStopTitle: String = "Stop"
    @State private var buttonClearTitle: String = "Clear"
  
    @EnvironmentObject var fileData: FileData
    
    var body: some View {
        VStack(alignment: .leading)
        {
            Label("Acciones:", systemImage: "bolt.fill")
               
            Button {
                //ACCION TODO
                print ("Boton start pulsado")
                fileData.EnEjecucion = true
                }
            label:
            {
                Label(buttonStartTitle, systemImage: "play.circle")
                    .foregroundColor(fileData.EnEjecucion ? Color.blue : Color.black)
            }
            .padding(20)
            //Spacer()
            Button {
                //TODO
                print ("Boton stop pulsado")
                fileData.EnEjecucion = false
                
            }
            label:
            {
                Label(buttonStopTitle, systemImage: "stop.fill")
                    .foregroundColor(fileData.EnEjecucion ? Color.red : Color.black)
            }
            .padding(20)
            //Spacer()
            Button {
                //TODO
                print ("Boton clear pulsado")
            }
            label:
            {
                Label(buttonClearTitle, systemImage: "clear.fill")
            }
            .padding(20)
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
