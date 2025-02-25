trigger Mr_Ms_title_contact on Contact (before insert) {

    Mr_Ms_title_update ContactClass = New Mr_Ms_title_update();
    ContactClass.UpdatecontatMr_Ms(Trigger.New);

}