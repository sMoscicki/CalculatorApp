import SwiftUI

let darkerGrey = Color(CGColor(gray: 0.1, alpha: 1))
let darkGrey = Color(CGColor(gray: 0.3, alpha: 1))


struct CalculatorHomeView: View {
    
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            VStack(alignment: .trailing, spacing: 0){
                
                Spacer()
                
                Text(calculator.displayValue)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .lineLimit(1)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                
                VStack(spacing: 10){
                    CalculatorRawView(labels: ["CE", "", "", String("\u{00f7}")], colors: [darkGrey, darkGrey, darkGrey, .orange])
                    CalculatorRawView(labels: ["7", "8", "9", "*"])
                    CalculatorRawView(labels: ["4", "5", "6", "-"])
                    CalculatorRawView(labels: ["1", "2", "3", "+"])
                    CalculatorRawView(labels: ["0", ".", "", "="])
                    
                }
                .frame(height: geometry.size.height * 0.8)
                .padding()
            }
        }
        .background(darkerGrey)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CalculatorHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorHomeView()
            .environmentObject(Calculator())
            
    }
}
