trigger EventTrigger on CAMPX__Event__c (before insert) {
    if (trigger.isBefore && trigger.isInsert) {
        EventTriggerHandler.handleBeforeInsert(trigger.new);  
    }
}