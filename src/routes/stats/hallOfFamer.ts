export class HallOfFamer {
    id: number;
    firstName: string;
    lastName: string;
    attendance: number;

    constructor(id: number, firstName: string, lastName: string, attendance: number) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.attendance = attendance;
    }
}