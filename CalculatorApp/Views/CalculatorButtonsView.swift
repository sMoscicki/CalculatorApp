import SwiftUI

struct CalculatorButtonsView: View {
    
    @EnvironmentObject var calculator: Calculator
    
    
    var label: String
    var color: Color
    
    
    
    
    var body: some View {
        Button(action: {
            
            calculator.buttonPressed(label: label)
            
        }, label: {
            ZStack{
                Circle()
                    .fill(color)
                    .frame(width: 89, height: 89)
                
                Text(label)
                    .font(.title)
            }
        })
        .accentColor(.white)
    }
}

struct CalculatorButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButtonsView(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100, height: 100))
            .environmentObject(Calculator())
    }
}
