global without sharing class UtilsFetchUserLastLoginData {
	/**
     * Retrieves data from the user record that could only be retrieved with special perms.
     * Used by Lightning Flows.
     **/
    @InvocableMethod(label='Get User Login Details' description='Retrieves data from the User record that can only be retrieved by users with Manager Users permission.' category= 'User')
    global static List<UserLoginData> getUserDetails(List<Id> userIds) {
        System.assert(userIds != null);
        List<UserLoginData> retVal = new List<UserLoginData>();
        List<User> allUsers = [select Id, userName, LastLoginDate, NumberOfFailedLogins,LastPasswordChangeDate from User where Id in :userIds];
        for(User u : allUsers){
            UserLoginData dta = new UserLoginData();
            dta.lastLoginDateTime = u.LastLoginDate;
            dta.numberFailedLogins = u.NumberOfFailedLogins;
            dta.lastPasswordResetDateTime = u.LastPasswordChangeDate;
            
            System.assert(dta != null);
            
            retVal.add(dta);
        }
        
        return retVal;
    }
    
    global class UserLoginData {
        @InvocableVariable
        global DateTime lastLoginDateTime;
        
        @InvocableVariable
        global DateTime lastPasswordResetDateTime;
        
        @InvocableVariable
        global Integer numberFailedLogins;
    }
}