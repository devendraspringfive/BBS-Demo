//Ticket - 005: Create contact when new Account is created
trigger AccountTrigger on Account (after insert) {
List<Contact> conListToInsert = new List<Contact>();
    for(Account acc : Trigger.new){
        Contact c = new Contact();
        c.LastName = acc.Name;
        c.AccountId = acc.Id;
        conListToInsert.add(c);
    }
    insert conListToInsert;
}