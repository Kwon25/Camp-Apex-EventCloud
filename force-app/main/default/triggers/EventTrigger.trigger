trigger EventTrigger on CAMPX__Event__c (before insert, before update) {
    if (trigger.isBefore && trigger.isInsert) {
        EventTriggerHandler.handleBeforeInsert(trigger.new);  
    }

    if (trigger.isBefore && trigger.isUpdate) {
        EventTriggerHandler.handleBeforeUpdate(trigger.new, trigger.oldMap);
    }
}