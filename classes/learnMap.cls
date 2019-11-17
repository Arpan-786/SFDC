public class learnMap {

    
    public static void fnMap()
    {
        
        map<string, string> CountryCurrency = new map<string, string>();
        
        countrycurrency.put('India', 'INR');
        countrycurrency.put('USA','USD');
        countrycurrency.put('Singapore', 'SGD');
        system.debug(countrycurrency);  
        
         system.debug('India currency is ' + countrycurrency.get('India'));
         system.debug('Map size ' + countrycurrency.size());
         system.debug('Is map empty ' + countrycurrency.Isempty());
        
        list<string> mapvalues = new list<string>();
        mapvalues = countrycurrency.values();
        
        set<string> mapkey = new set<string>();
        mapkey = countrycurrency.keyset();
        
        system.debug('Map keys are ' +  mapkey);
        system.debug('Map values are ' + mapvalues);
        
        
    }
    
    
}