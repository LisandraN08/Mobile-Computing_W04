//
//  ContentView.swift
//  Mobile Computing_W04
//
//  Created by MacBook Pro on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var jumlahTekan = 0
    @State var namaKu = ""
    let daftarJagoanKu = ["Gwen", "Zoya", "Vanessa"]
    
    @State private var pilihanJagoanKu = "Zoya"
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    Text("Halo")
                    Text("Apa kabar")
                    Button("Jumlah Tekan : \(jumlahTekan)"){
                        print("Tertekan")
                        jumlahTekan += 1
                        print(namaKu)
                    }
                    TextField("Namanya siapa :", text: $namaKu)
                    Text("Nama yang diinput adalah : \(namaKu)")
                    Picker("Pilih jagoanmu", selection:$pilihanJagoanKu){
                        ForEach(daftarJagoanKu, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
            }
            .navigationTitle("Ini judul")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
