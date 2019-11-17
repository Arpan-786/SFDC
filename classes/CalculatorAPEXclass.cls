public class CalculatorAPEXclass {
    
   private integer result;
    
    private integer fnSum(integer numA, integer numB)
    {
           result = numA  + numB;
           return(result);
    }
    
    public void fnMul(integer numA, integer numB)
    {
        result = numA*numB;
        system.debug('outcome of Multiplication ' + result);
        
    }

}