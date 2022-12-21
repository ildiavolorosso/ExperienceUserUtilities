# Experience User Utilities

## Read the Docs!
Our [new Wiki](https://github.com/ildiavolorosso/ExperienceUserUtilities/wiki/Experience-User-Utilities) provides a comprehensive overview and instructions for getting the package working.

[Watch the Demo Video](https://youtu.be/fjL8zmLkz9I)

## Get Started



# What’s In the Package
The package installs several items:

### Usable Screen Flows:

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| External_User_Details | Flow   | Displays the details of an associated Experience Cloud user on the Contact detail page in Lightning Experience. |
| Deactivate_External_User | Flow | Templated flow that permanently disables, deactivates, or reactivates an Experience Cloud user. |
| Freeze_Unfreeze_User  | Flow   | Templated flow that temporarily freezes an Experience Cloud user, preventing that user from logging into any Experience Cloud site. |
| Reset_External_user_Password | Flow  | Templated flow that triggers a password reset for a particular user. |

### Utility Flows/Subflows:

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| Deactivate_User | Flow | Utility subflow that temporarily deactivates the designated user. |
| Disable_User | Flow | Utility subflow that permanently disables the designated user. |
| Get_External_User | Flow | Utility subflow that retrieves User, UserLogin, and other details of the associated Experience Cloud user. |
| Reactivate_User | Flow | Utility subflow that reactivates a user who was temporarily deactivated. |

### Apex Classes:

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| UtilsFetchUserLastLoginData | Apex Class | Flow action Apex utility that retrieves more sensitive user data, such as last password reset. |
| UtilsGetObjectName | Apex Class | Flow action Apex utility that returns an SObject name from a record Id. Will be used in future iterations to support person accounts. |
| UtilsResetUserPassword | Apex Class | Flow action Apex utility that resets a user's password with the standard email template. |
| UtilsTests | Apex Class | Unit tests for the package. |

### Lightning Components:

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| flowProfileImage | Lightning Web Component | Component for flow screens. Displays the first name, last name, and profile photo of an Experience Cloud user. |

### Other Items:

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| Manage_External_Users_from_Lightning_Experience | Permission Set | Permission set that enables password reset, user management, and access to the utility Apex class for resetting a password. |
| Freeze_Unfreeze_Action_Contact | Action (Contact) | Contact object action that invokes the Freeze/Unfreeze User flow template directly. You may want to clone the flow template and clone this action. |
| Deactivate_External_User_Action_Contact | Action (Contact) | Contact object action that invokes the Disable/Deactivate/Reactivate User flow. |
| Reset_Password_Action_Contact | Action (Contact) | Contact object action that invokes the Reset_External_user_Password flow. |
| UserContactEmailMatch | Custom Field (User) | Used by one flow to flag whether the User's email matches the email on a contact record. |
| Overview_Setup | Button/Link | Used to link to this document after package install. |
| ExternalUserUtilsInfoPage | Visualforce Page | Used only on package installation to display a link to this documentation. |


# Setup

## Install the Package
Install the package from the AppExchange. The installer will provide a link to this page when finished.

## Assign Permission Set to Users
Locate the **Manage External Users from Lightning Experience** permission set. Click the __Manage Assignments__ button, and add the users you intend to have permission to run these tools. Note that at this time, only users with internal licenses are supported.

![Permission Set](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/1.ss.permsets.png)

## Clone or Review Flows
This package ships with eight flows. Four are traditional screen flows, designed to be invoked by object-level actions or to live on a record page in Lightning Experience, and the remainder are utility flows that are called by these flows. All flows are provided as templates, so you have the ability to quickly and easily clone them and save your own versions in your org. You can run the installed flow versions unaltered, or you can open them, alter them, and save your own versions with custom business logic.

![Flows Installed by the Package](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/2.ss.flowlist.png)

We recommend saving new versions of these flows if you have a need to customize the way they operate. But if you create your own versions, you will need to edit or recreate the Contact object actions that came with the package to point to the flows you created from the templates.

##Add (or Clone & Add) Actions to Contact Page Layouts
The package installs 3 custom actions on the Contact object.

![Contact Object Actions](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/3.ss.contactactions.png?raw=true)

These actions invoke the utility flows in the package. You will need to edit the Contact object page layouts used to include these actions in the *Mobile & Lightning Actions* section.

![Contact Object Page Layout](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/4.ss.contactlayout.png)

## Add User Details Flow to Lightning Experience Contact Page
The *External User Details* flow installed by the package was designed to be embedded on a Contact page using Lightning App Builder. Use Lightning App Builder to open the Contact record page(s) you would like to use the component on. Note that your org may have more than one, and that these lightning pages may be assigned to different audiences, different apps, etc.

Add a *Flow* component to the page, in an area that makes sense for your intended users. Set the component to use either the *External User Details* flow, or a custom flow that you saved from External User Details.

**IMPORTANT:** Be sure to include the **recordId** in the component configuration. And be sure to save and activate the page.

![Editing the LEX Contact Page](https://github.com/ildiavolorosso/ExperienceUserUtilities/blob/main/images/screenshots/5.ss.contactpageedit.png)

**NOTE:** This flow will NOT currently work on Person Account pages. The flow expects a contact ID, but person account pages provide an account ID to on-page components. If Person Accounts are enabled in your org, you can try creating your own flow that extracts the ContactId and passing it to these flows as Subflows.

# Customizing Your Utilities
Salesforce Flow is a powerful, flexible point-and-click tool that allows you to quickly implement custom screens, business logic, and more.

The flows included in the package are marked as templates. That means you can either use them as-is, or save copies of them and customize those copies to suit your administrative needs. There are many resources and accelerators available to add functionality to your flows:
| Item           | Details              |
| :------------- | :--------------------|
| [Unofficial SF](https://unofficialsf.com/) | A site dedicated to Flow extensibility. Contains dozens of free custom components and other extensions, as well as blog posts on how to use Flow & NBA. |
| [Trailblazer Community: Flow](https://trailhead.salesforce.com/en/trailblazer-community/topics/flow?sort=LAST_MODIFIED_DATE_DESC) | Flow Topic	Official Salesforce community topic for Flow questions & discussions. |
| [Help & Training: Flow Documentation](https://help.salesforce.com/s/articleView?id=sf.flow_builder.htm&type=5) | Flow	Official documentation on how to use Flow. |
| [learnexperiencecloud.com](https://www.learnexperiencecloud.com/s/) | Experience Cloud practices & learning site. Includes blog posts, customer events, and more. |

# Limitations & Known Issues
**IMPORTANT NOTE:** This package is released under the [Salesforce Labs](https://appexchange.salesforce.com/category/salesforce-labs-apps) program. As such, these solutions are not officially supported by Salesforce. But you can get help with Flow, Apex, and other topics in the Trailblazer Community.

Please see the Issues tab for tracking all bugs and feature requests.

# Add Person Account Support!

[Person Accounts](https://help.salesforce.com/s/articleView?language=en_US&type=5&id=account_person.htm) are used within Salesforce to represent consumers and, at times, households. And they are often linked to users who hold Experience Cloud licenses. The standard Experience User Utilities package does not include support for person accounts because that would create a dependency on having person accounts active in customer orgs. So we've created a separate AppExchange package called [Experience User Utility Extensions](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N4V00000GuGt3UAF) that offers wrapper Flows to support these utilities on Person Account records.






