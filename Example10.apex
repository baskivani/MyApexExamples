// 
public class MyApexExamples {

  

public static void BaranOpKontrol(){
            
            list<opportunity> oppList=[SELECT id , Name ,CloseDate, StageName , Description FROM Opportunity WHERE IsClosed = false];
            Date bugun= system.today();
            if(oppList.size()>0){
                for (opportunity opp: oppList) {
                    integer gunFarki=bugun.daysBetween(opp.CloseDate);
                    if(gunFarki<=5 && gunFarki>=0){
                        opp.Description= ('Ha gayret '+ opp.CloseDate+ ' e ' + gunFarki+ ' gun kaldi.');
                    }else {
                        break;
                    }
                }
      update oppList;
            }
}
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/


