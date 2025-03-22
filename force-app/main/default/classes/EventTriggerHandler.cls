public with sharing class EventTriggerHandler {
    public EventTriggerHandler() {

    }
    public static void handleBeforeInsert(List<CAMPX__Event__c> newEvents) {
        for (CAMPX__Event__c e : newEvents) {
            e.CAMPX__Status__c = 'Planning';
            e.CAMPX__StatusChangeDate__c = System.now();      
        }
    }

    public static void handleBeforeUpdate(List<CAMPX__Event__c> newEvents, Map<Id, CAMPX__Event__c> oldEvents) {
        System.debug('Start handleBeforeUpdate');
        for (CAMPX__Event__c e : newEvents) {
            CAMPX__Event__c oldEvent = oldEvents.get(e.Id);
            System.debug('Old Event: '+ oldEvent);
            System.debug('New Event: ' + e);
            if (e.CAMPX__Status__c != oldEvent.CAMPX__Status__c) {
                e.CAMPX__StatusChangeDate__c = System.now();
            }
        }
    }
}