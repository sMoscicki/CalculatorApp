import Foundation


class Calculator: ObservableObject{
    
    @Published var displayValue = "0"
    
    var currentOp: Operator?
    
    var currentNumber: Double? = 0
    
    var previousNumber: Double?
    
    var equaled = false
    
    var decimalPlace = 0
    
    func buttonPressed(label: String){
        
        if label == "CE"{
            displayValue = "0"
            reset()
            
        }else if label == "="{
            equalsClicked()
        }else if label == "."{
            decimalClicked()
        }else if let value = Double(label){
            numberPressed(value: value)
        }else{
            operatorPressed(op: Operator())
        }
        
    }
    
    
    
    func reset(){
        currentOp = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked(){
        
    }
    
    func decimalClicked(){
        
    }
    
    func numberPressed(value: Double){
        
    }
    
    func operatorPressed(op: Operator){
        
    }
    
    
}
