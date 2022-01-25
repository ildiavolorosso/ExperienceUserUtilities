import { api, LightningElement } from 'lwc';

export default class FlowProfileImage extends LightningElement {
    @api photoURL;

    if (photoURL) {
        
    }

    @api firstName;

    @api lastName;

    @api email;
}