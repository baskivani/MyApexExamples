// 
public class MyApexExamples {

    // Bu bir overriding ornegi. Child klastan bu method cagiriliyor. Ancak bu method'da virtual yazmamiz lazim.
    // Static kullanamiyoruz.
    public  Virtual integer Multiply(integer x, integer y){
        
        integer num1=x;
        integer num2=y;
        integer result=x*y;
        system.debug('Islem sonucu: '+result);
        return result;
    }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/
