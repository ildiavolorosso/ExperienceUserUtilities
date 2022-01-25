global class UtilsResetUserPassword {
    /**
     * Triggers a password reset for all specified users.
     * Used by Lightning Flows.
     **/
    @InvocableMethod(label='Reset User Password' description='Resets the password of a user and sends an email prompting them to change it. Leave emaiLTemplate blank to use the default email template to notify the user.' category= 'User')
    global static List<ID> resetUserPassword(List<User> users) {
        System.assert(users != null);
        List<ID> retVal = new List<ID>();
        for(User u : users){
            // resets password and sends the system-default email.
           // FUTURE REFACTOR: Change to use resetPasswordWithEmailTemplate() with a custom template
            //System.resetPassword(u.Id, true);
            Site.forgotPassword(u.Username);
            retVal.add(u.Id);
        }

        System.assert(retVal != null);
        return retVal;
    }
}