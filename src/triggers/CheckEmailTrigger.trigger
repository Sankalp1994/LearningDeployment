trigger CheckEmailTrigger on EmailMessage (after insert) {
    system.debug(Trigger.New);
    List<EmailMessage> obj=[select ToIds,Id from EmailMessage where id in :Trigger.New];
    List<Id> val=obj[0].ToIds;
    Id idval=val[0];
    system.debug('Query Result:'+obj);
    system.debug('Value:'+idval);
}