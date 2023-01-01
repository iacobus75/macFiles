//
//  MacDetailView.swift
//  macFiles2
//
//  Created by Alejandro Garcia on 31/12/22.
//

import SwiftUI

struct MacDetailView: View {
@EnvironmentObject var fileData: FileData
    private var data:Dictionary = ["1":"Linea 1","2":"Linea 2","3":"Linea 3","4":"Linea 4"]

    var body: some View {
        VStack{
            Text("Estado: "+(fileData.EnEjecucion ? "En ejecución" : "parado"))
                //.backgroundColor(Color.orange)
            
            ScrollView{
                LazyVStack{
                   
                    
                    VStack {
                       // ForEach(1...5, id: \.self) {
                         //           value in
                        Text("1")
//                            await Text(p2_valor(valor: 1))
//                            await Text(p2_valor(valor: 2))
//                            await Text(p2_valor(valor: 3))
//                        //}
                        Spacer()
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Hello, world!")
                        
                        
                        
                    }
                    .padding()
                    .toolbar{
                        ToolbarItem(placement: .automatic)
                        {
                            //TODO
                        }
                    }
                    .navigationTitle("macFiles")
                    .navigationSubtitle(fileData.EnEjecucion ? "Scanning":"Stopped")
                }
            }
        }
    }
}

struct MacDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MacDetailView().environmentObject(FileData())
    }
}
