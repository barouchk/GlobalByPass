public class AccountHandler extends TriggerHandler {

    private List<Account> newAccountList;
    private List<Account> oldAccountList;
    private Map<Id, Account> newAccountMap;
    private Map<Id, Account> oldAccountMap;
    
    public AccountHandler() {
        newAccountList = (List<Account>) Trigger.new;
        oldAccountList = (List<Account>) Trigger.old;
        newAccountMap = (Map<Id, Account>) Trigger.newMap;
        oldAccountMap = (Map<Id, Account>) Trigger.oldMap;
    }

    public override void afterUpdate () {
        AccountHelper.handleAccount(newAccountList, oldAccountMap);
    }

}   