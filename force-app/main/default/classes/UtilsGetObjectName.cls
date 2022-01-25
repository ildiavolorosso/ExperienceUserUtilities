global without sharing class UtilsGetObjectName {
	/**
     * Retrieves the name of an object from a recordId.
     * Used by Lightning Flows.
     **/
    @InvocableMethod(label='Get Object Name' description='Retrieves an SObject name from a passed record ID.' category= 'Utilities')
    global static List<String> getObjectNames(List<Id> objectIds) {
        System.assert(objectIds != null);
        List<String> retVal = new List<String>();
        for(Id curId : objectIds){
            System.assert(curId != null);
            retVal.add(curId.getSObjectType().getDescribe().getName());
        }
        
        return retVal;
    }
}