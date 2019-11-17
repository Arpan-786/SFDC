public class learnSet {
    public static void fnset()
    {
        set<string> Empname = new set<string>{'Arpan', 'Sheetal', 'Amrutha','Ismail', 'Arpan'};        
        System.debug('Set values are ' + Empname);
        Empname.add('Gokul');
        system.debug('Set values after adding new member are ' + Empname );        
        System.debug('Size of set is ' + Empname.size());  
        
         for(string i: Empname)
        {
            System.debug('Element of the set ' + i);
            }
        
        
        System.debug('Set Contains Arpan ' + Empname.contains('Arpan')); 
        Empname.remove('Arpan');
        System.debug('Set contains Arpan after removing Arpan ' + Empname.contains('Arpan')); 
    }
    
   

}