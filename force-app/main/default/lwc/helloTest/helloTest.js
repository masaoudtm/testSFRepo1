import { LightningElement, track} from 'lwc';

export default class HelloTest extends LightningElement {
    @track greeting = 'World';
}