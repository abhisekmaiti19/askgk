global class SOAPExmp {
/*webService static Account getAccount(String actId) {
Account act = [select id, name from account where id =: actId];
return act;
}*/
    
webService static List<account> getAccount() {
	return [select id, name from account];
	}
}