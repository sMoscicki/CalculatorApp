//
//  CalculatorRawView.swift
//  CalculatorApp
//
//  Created by s.Moscicki on 19/04/2023.
//

import SwiftUI

struct CalculatorRawView: View {
    
    let columnCount = 4
    
        var labels = ["", "", "", ""]
        var colors: [Color] = [.gray, .gray, .gray, .orange]
        
    
    var body: some View {
        
        HStack(spacing: 10){
            
            ForEach(0..<columnCount) { index in
                
                CalculatorButtonsView(label: labels[index], color: colors[index])
                
                
            }
            
        }
        
    }
}

struct CalculatorRawView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRawView(labels: ["1", "2", "3", "+"])
            
    }
}
