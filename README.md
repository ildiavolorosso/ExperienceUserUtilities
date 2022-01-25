# Experience User Utilities

<h1>Introduction</h1>
<p>Experience Cloud powers compelling portals, sites, forums, mobile apps, and commerce storefronts for Salesforce customers. And every user of these digital properties is represented by data in your CRM.</p>

<p>These user utilities live on the Contact record in Lightning Experience, and allow quick user administration from the Contact page, keeping your support agents more productive.</p>

<h1>Why We Built It!</h1>
<p>Experience Cloud user administration usually starts on a Contact record. Salesforce provides standard buttons on Contact layouts to view and disable external users. But these buttons navigate the user away from the Contact record, which can inhibit productivity for Agents and Administrators alike.</p>

<p>These utilities were designed as a flexible starting point to display Experience Cloud user information right on the contact record, and to provide quick Flow-based user administration utilities that can be invoked from buttons on that Contact record. And since our Flows are packaged as templates, you can create your own customized versions of them, without worrying about future updates!</p>

<h1>A Quick Overview</h1>
<p>This package includes Flows that display user data on a Contact record, allow disabling/deactivation/reactivation of a user, freezing of a user, and resetting a user’s password.</p>

<p>Placing these flows and actions on a Contact Lightning Page or layout will provide your Service Agents or others with appropriate permissions the ability to quickly perform these common user administration tasks without navigating away from the Contact record.</p>

[Watch the Demo Video](https://www.youtube.com/watch?v=vJC4yxXtQ-w)

<h1>What’s In the Package</h1>
The package installs several items:</p>

<h3>Usable Screen Flows:</h3>

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| External_User_Details | Flow   | Displays the details of an associated Experience Cloud user on the Contact detail page in Lightning Experience. |
| Deactivate_External_User | Flow | Templated flow that permanently disables, deactivates, or reactivates an Experience Cloud user. |
| Freeze_Unfreeze_User  | Flow   | Templated flow that temporarily freezes an Experience Cloud user, preventing that user from logging into any Experience Cloud site. |
| Reset_External_user_Password | Flow  | Templated flow that triggers a password reset for a particular user. |

<h3>Utility Flows/Subflows:</h3>

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| Deactivate_User | Flow | Utility subflow that temporarily deactivates the designated user. |
| Disable_User | Flow | Utility subflow that permanently disables the designated user. |
| Get_External_User | Flow | Utility subflow that retrieves User, UserLogin, and other details of the associated Experience Cloud user. |
| Reactivate_User | Flow | Utility subflow that reactivates a user who was temporarily deactivated. |

<h3>Apex Classes:</h3>

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| UtilsFetchUserLastLoginData | Apex Class | Flow action Apex utility that retrieves more sensitive user data, such as last password reset. |
| UtilsGetObjectName | Apex Class | Flow action Apex utility that returns an SObject name from a record Id. Will be used in future iterations to support person accounts. |
| UtilsResetUserPassword | Apex Class | Flow action Apex utility that resets a user's password with the standard email template. |
| UtilsTests | Apex Class | Unit tests for the package. |

<h3>Lightning Components:</h3>

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| flowProfileImage | Lightning Web Component | Component for flow screens. Displays the first name, last name, and profile photo of an Experience Cloud user. |

<h3>Other Items:</h3>

| Item           | Type          | Details              |
| :------------- |:--------------| :--------------------|
| Manage_External_Users_from_Lightning_Experience | Permission Set | Permission set that enables password reset, user management, and access to the utility Apex class for resetting a password. |
| Freeze_Unfreeze_Action_Contact | Action (Contact) | Contact object action that invokes the Freeze/Unfreeze User flow template directly. You may want to clone the flow template and clone this action. |
| Deactivate_External_User_Action_Contact | Action (Contact) | Contact object action that invokes the Disable/Deactivate/Reactivate User flow. |
| Reset_Password_Action_Contact | Action (Contact) | Contact object action that invokes the Reset_External_user_Password flow. |
| UserContactEmailMatch | Custom Field (User) | Used by one flow to flag whether the User's email matches the email on a contact record. |
| Overview_Setup | Button/Link | Used to link to this document after package install. |
| ExternalUserUtilsInfoPage | Visualforce Page | Used only on package installation to display a link to this documentation. |


<h1>Installation & Setup</h1>
You will need System Administrator privileges to install this package in your Salesforce org.

<h2>Install the Package</h2>
Install the package from the AppExchange. The installer will provide a link to this page when finished.

<h2>Assign Permission Set to Users</h2>
<p>Locate the **Manage External Users from Lightning Experience** permission set. Click the __Manage Assignments__ button, and add the users you intend to have permission to run these tools. Note that at this time, only users with internal licenses are supported.</p> 

![Permission Set](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/1.ss.permsets.png)

<h2>Clone or Review Flows</h2>
<p>This package ships with eight flows. Four are traditional screen flows, designed to be invoked by object-level actions or to live on a record page in Lightning Experience, and the remainder are utility flows that are called by these flows. All flows are provided as templates, so you have the ability to quickly and easily clone them and save your own versions in your org. You can run the installed flow versions unaltered, or you can open them, alter them, and save your own versions with custom business logic.</p>

![Flows Installed by the Package](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/2.ss.flowlist.png)

We recommend saving new versions of these flows if you have a need to customize the way they operate. But if you create your own versions, you will need to edit or recreate the Contact object actions that came with the package to point to the flows you created from the templates.

<h2>Add (or Clone & Add) Actions to Contact Page Layouts</h2>
<p>The package installs 3 custom actions on the Contact object.</p>

![Contact Object Actions](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/3.ss.contactactions.png?raw=true)

<p>These actions invoke the utility flows in the package. You will need to edit the Contact object page layouts used to include these actions in the *Mobile & Lightning Actions* section.</p>

![Contact Object Page Layout](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/4.ss.contactlayout.png)

<h2>Add User Details Flow to Lightning Experience Contact Page</h2>
<p>The *External User Details* flow installed by the package was designed to be embedded on a Contact page using Lightning App Builder. Use Lightning App Builder to open the Contact record page(s) you would like to use the component on. Note that your org may have more than one, and that these lightning pages may be assigned to different audiences, different apps, etc.</p>

<p>Add a *Flow* component to the page, in an area that makes sense for your intended users. Set the component to use either the *External User Details* flow, or a custom flow that you saved from External User Details.</p>

<p><b>IMPORTANT:</b> Be sure to include the _recordId_ in the component configuration. And be sure to save and activate the page.</p>

![Editing the LEX Contact Page](https://github.com/ildiavolorosso/ExperienceUserUtilities/blob/main/images/screenshots/5.ss.contactpageedit.png)

<p><b>NOTE:</b> This flow will NOT currently work on Person Account pages. The flow expects a contact ID, but person account pages provide an account ID to on-page components. If Person Accounts are enabled in your org, you can try creating your own flow that extracts the ContactId and passing it to these flows as Subflows.</p>

<h1>Customizing Your Utilities</h1>
<p>Salesforce Flow is a powerful, flexible point-and-click tool that allows you to quickly implement custom screens, business logic, and more.</p>

<p>The flows included in the package are marked as templates. That means you can either use them as-is, or save copies of them and customize those copies to suit your administrative needs.</p>

<h1>Limitations & Known Issues</h1>
<p><b>IMPORTANT NOTE:</b> This package is released under the [Salesforce Labs](https://appexchange.salesforce.com/category/salesforce-labs-apps) program. As such, these solutions are not officially supported by Salesforce. But you can get help with Flow, Apex, and other topics in the Trailblazer Community.</p>

<p>Please see the Issues tab for tracking all bugs and feature requests.</p>

<h1>Resources</h1>
<p>Salesforce Flow is a fully supported platform capability. There are many resources to help you diagnose issues with or customize these flows:</p>

[Unofficial SF](https://unofficialsf.com/) - Custom flow extensions, UI components, blogs, and more.

[Help &amp; Training: Flow](https://help.salesforce.com/apex/HTViewHelpDoc?id=sf.flow.htm&language=en_us#:~:text=Salesforce%20Flow%20provides%20two%20types,people%2C%20use%20a%20screen%20flow.&text=For%20example%2C%20add%20automation%20to,a%20user%20clicks%20a%20button.) - Official documentation on Flow.

[Trailhead: Flow AutomatioN Module](https://trailhead.salesforce.com/content/learn/modules/business_process_automation) - Get started with Flow using Trailhead, Salesforce's free learning tool.



