public with sharing class AccountController {
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED LIMIT 10];
    }
}