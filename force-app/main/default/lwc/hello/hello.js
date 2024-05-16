import { LightningElement } from 'lwc';

export default class Hello extends LightningElement {

    greeting = 'World';
    email = 'hello@world';

    // constructor(greeting){

    // }
    changeHandler(event) {

        if(event.target.name === 'greet'){

            this.greeting = event.target.value;
    
        }


    if(event.target.name === 'email'){

        this.email = event.target.value;

    }
    }
}