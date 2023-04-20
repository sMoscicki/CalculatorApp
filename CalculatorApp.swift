//
//  CalculatorApp.swift
//  CalculatorApp
//
//  Created by s.Moscicki on 20/04/2023.
//

import SwiftUI

struct CalculatorApp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CalculatorApp_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorHomeView()
            .environmentObject(Calculator())
    }
}
