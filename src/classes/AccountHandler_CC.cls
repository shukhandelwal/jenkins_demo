public class AccountHandler_CC {
	
	public void display(){
	
	String[] strings=new String[]{'Bhandup','Thane','Andheri','Mulund','colaba','Marine Lines'};
	
	for(String s : strings){
	System.debug('elements of array'+s);
	
	}
	
	}
	
	public void displayMsg(){
		
		Account[] listAccount=[Select Id,Name from Account];
		for(Account acc:listAccount){
		System.debug('ID ": '+acc.Id+' Name : '+acc.name);
		}
		
	}
    
}