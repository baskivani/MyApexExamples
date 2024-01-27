// 
public class MyApexExamples {

  public static void ForLoopExample1(){
  

String x='Q';
string y='-';
string kelime='';
for (integer i = 0; i<3; i++){
   kelime+=x+y;
}
kelime+=x;
System.debug(kelime);

for (Integer i = 0; i < 4; i++) {
    // Kelimenin uzunluğunu kontrol etmek
    if (kelime.length() >= 2) {
        // Kelimenin son iki harfini alma
        kelime = kelime.substring(0, kelime.length() - 2);
        System.debug(kelime);
    } else {
        System.debug('Kelime iki harften kısa olduğu için silme işlemi yapılamaz.');
        break;  // Eğer kelime iki harften kısa ise döngüden çık
    }
}


    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/
