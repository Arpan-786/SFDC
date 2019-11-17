public class learnList {
    public static void fnlist()
    {
        list<string> EmpName = new list<string>();
        EmpName.add('Arpan');
        EmpName.add('Sheetal');
        EmpName.add('Amrutha');        
        System.debug('List values are ' + EmpName);
        EmpName.sort();
        System.debug('List values after sort ' + EmpName);
        EmpName.Set(0,'Ismail');
        System.debug('List values post Set ' + EmpName);
        EmpName.remove(2);
        System.debug('List values post remove ' + EmpName);
        EmpName.add('Vivek');
        System.debug('List values post set ' + EmpName );
        System.debug('List values size ' + EmpName.size());
        
       for(string i : Empname)
        {
            System.debug('Current list element using for each loop ' + i );
           // system.debug('current list element is ' + Empname.get(i));
        }
        
        for(integer i = 0; i <= Empname.size() - 1; i++)
        {
            System.debug('Current list of element using for loop' + Empname.get(i));
        }
        
        
      //  System.debug('List values post remove ' + EmpName.clear());
        EmpName.clear();
        System.debug('List values post clear ' + EmpName);
        
    }
    
    

}