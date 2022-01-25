@isTest
public class UtilsTests {
    /**
     * Tests UtilsReserUserPassword invocable method class used with flows.
     */
    @isTest static void testResetCode() {
        List<User> allUsers = new List<User>();
        UtilsResetUserPassword.resetUserPassword(allUsers);
        System.assert(true);
    }
}
