trigger sampleAccountTrigger on Account (before insert) {
	for(Account a : Trigger.new){
		a.Name = 'CloudWharf';
	}
}