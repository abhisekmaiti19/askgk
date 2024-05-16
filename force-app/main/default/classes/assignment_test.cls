@istest
private class assignment_test {
    static testmethod void assignmentTest(){
        List<Contact>allcn = assignmentFactory.allcontact();
        
        //I have 19999 data
        list<contact> lst1 = new list<contact>();
        for(integer i = 0; i<9999; i++){
            contact con = allcn[i];
            lst1.add(con);
        }
        insert lst1;
        
        Test.startTest();
            list<contact> lst2 = new list<contact>();
            for(integer i = 10000; i<allcn.size(); i++){
                contact con = allcn[i];
                lst2.add(con);
            }
            insert lst2;
        Test.stoptest();
    }
}