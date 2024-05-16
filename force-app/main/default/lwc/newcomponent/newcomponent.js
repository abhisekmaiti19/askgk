import { LightningElement, wire } from 'lwc';
import {hiapex} from "c/stylishComponent";
import mycon from '@salesforce/apex/lwcContacts.mycon';
import {stylishComponent} from "c/stylishComponent";

export default class Newcomponent extends LightningElement {



    items = ['item10','item2','item3','item4'];

    @wire(mycon) testMethod;


    showButton = true;
    showAgain = true;

    //bg scenes ----------->

    counter = 0;

    constructor() {
        super();
        console.log('Constructor called');
    }

    connectedCallback() {
        console.log('Connected to DOM');
    }
 
 renderedCallback() {
        console.log('Component rendered');
    }

    disconnectedCallback() {
        console.log('Disconnected from DOM');
    }

    increment() {
        this.counter++;
    }


// ------------------ 

    handleClick(){

        this.showButton = !this.showButton ;

    } 
    handleClicktoggle(e){
        
        if(e.target.name === 'hideonly'){
            this.showButton = true;
        }
        if(e.target.name === 'hideagain'){
            this.showAgain = !this.showAgain;
            console.log('hi click')
            hiapex();
            new stylishComponent().myfun();
        }
    }

    
   
}