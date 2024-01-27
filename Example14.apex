

// This code gives us a new opportunity and related task.
public class MyApexExamples {

   public static void CreateOpportunityAndTasks(string oppName){

Opportunity newOpp = new Opportunity();
newOpp.Name =oppName;
newOpp.StageName='Prospecting';
newOpp.CloseDate=Date.today().addDays(20);
newOpp.Description= 'Dersim Hotels is one of biggest hotels in Dersim';

insert newOpp;

Task newTask= new Task();
newTask.Subject='First task';
newTask.Description='There is new task for you';
newTask.WhatId=newOpp.id;

insert newTask;

}
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/
