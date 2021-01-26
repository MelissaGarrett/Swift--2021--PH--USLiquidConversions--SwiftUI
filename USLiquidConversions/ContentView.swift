//
//  ContentView.swift
//  USLiquidConversions
//
//  Created by Melissa  Garrett on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    @State private var volumeInput = ""
    @State private var unitInput = 0
    @State private var unitOutput = 0
    
    let units = ["fl ounce", "cup", "pint", "quart", "gallon"]
    
    //TODO
    var volumeOutput: Double {
        let inputAsNumber = Double(volumeInput) ?? 0
        
        return inputAsNumber
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter volume to convert", text: $volumeInput)
                        .keyboardType(.numbersAndPunctuation)
                }
                
                Section {
                    // to add spacing
                }
                
                Section(header: Text("Convert volume from...")) {
                    Picker("Input volume", selection: $unitInput) {
                        ForEach(0 ..< units.count) {
                            Text("\(units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Convert volume to...")) {
                    Picker("Output volume", selection: $unitOutput) {
                        ForEach(0 ..< units.count) {
                            Text("\(units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    // to add spacing
                }
                
                //TODO
                Section(header: Text("The converted volume is")) {
                    Text("")
                }
            }
            .navigationBarTitle("US Liquid Conversions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
