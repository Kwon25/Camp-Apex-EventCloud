public with sharing class EventTriggerHandler {
    public EventTriggerHandler() {

    }
    public static void handleBeforeInsert(List<CAMPX__Event__c> newEvents) {
        for (CAMPX__Event__c e : newEvents) {
            e.CAMPX__Status__c = 'Planning';            
        }
    }
}