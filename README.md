# Experience User Utilities

<h1>Introduction</h1>
<p>Experience Cloud powers compelling portals, sites, forums, mobile apps, and commerce storefronts for Salesforce customers. And every user of these digital properties is represented by data in your CRM.</p>

<p>These user utilities live on the Contact record in Lightning Experience, and allow quick user administration from the Contact page, keeping your support agents more productive.</p>

<h1>Why We Built It!</h1>
<p>Experience Cloud user administration usually starts on a Contact record. Salesforce provides standard buttons on Contact layouts to view and disable external users. But these buttons navigate the user away from the Contact record, which can inhibit productivity.</p>

<p>These utilities were designed as a flexible starting point to display Experience Cloud user information right on the contact record, and to provide quick Flow-based utilities that can be invoked from buttons on that Contact record! And since our Flows are packaged as templates, you can create your own customized versions of them!</p>

<h1>A Quick Overview</h1>
<p>This package includes Flows that display user data on a Contact record, allow disabling/deactivation/reactivation of a user, freezing of a user, and resetting a user’s password.</p>

<p>Placing these flows and actions on a Contact Lightning Page or layout will provide your Service Agents or others with appropriate permissions the ability to quickly perform common user administration tasks.</p>

[Watch the Demo Video](https://www.youtube.com/watch?v=vJC4yxXtQ-w)

<h1>What’s In the Package</h1>
The package installs several items:

<h1>Installation & Setup</h1>
You will need System Administrator privileges to install this package in your Salesforce org.

<h2>Install the Package</h2>
Install the package from the AppExchange. The installer will provide a link to this page when finished.

<h2>Assign Permission Set to Users</h2>
<p>Locate the **Manage External Users from Lightning Experience** permission set. Click the **Manage Assignments** button, and add the users you intend to have permission to run these tools. Note that at this time, only users with internal licenses are supported.</p> 

![Permission Set](https://raw.githubusercontent.com/ildiavolorosso/ExperienceUserUtilities/main/images/screenshots/1.ss.permsets.png)

<h2>Clone or Review Utility Flows</h2>
<p>This package ships with eight flows. Four are traditional screen flows, designed to be run by object-level actions or live on a record page in Lightning Experience, and ther remainder are utility flows that are called by these flows. All flows are provided as templates, so you have the ability to quickly and easily clone them and save your own versions in your org. You can run the installed flow versions unaltered, or you can open them, alter them, and save your own versions.</p>

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
<p><b>IMPORTANT NOTE:</b> This package is released under the Salesforce Labs (https://appexchange.salesforce.com/category/salesforce-labs-apps) program. As such, these solutions are not officially supported by Salesforce. But you can get help with Flow, Apex, and other topics in the Trailblazer Community.</p>

<p>Please see the Issues tab for tracking all bugs and feature requests.</p>




