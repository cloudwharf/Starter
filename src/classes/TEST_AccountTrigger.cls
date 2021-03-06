@isTest
private class TEST_AccountTrigger {

	@isTest
	private static void testTrigger(){
		Test.startTest();

		Account newAcc = new Account(Name = 'Mint');
		insert newAcc;

		Test.stopTest();

		List<Account> accounts = [SELECT Name FROM Account WHERE ID =: newAcc.ID];
		System.assertEquals('CloudWharf', accounts.get(0).Name);
	}
}