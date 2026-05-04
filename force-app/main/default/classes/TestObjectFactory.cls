public with sharing class TestObjectFactory {

    public static Global_Bypass__c createGlobalByPass() {
        Global_Bypass__c setting = new Global_Bypass__c(SetupOwnerId=Userinfo.getOrganizationId(), Run_Triggers__c=true);
        return setting;
    }
    
}