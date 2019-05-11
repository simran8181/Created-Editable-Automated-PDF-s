public class Mapping 
{
    public void check()
    {
		map<integer,string>Mymap1 = new map<integer,string>();
    	Mymap1.put(1,'simran');
    	Mymap1.put(2,'Siddharth');
    	Mymap1.put(3,'Daksh');
    	Mymap1.put(4,'Laksh');
    	Mymap1.put(5,'Darshan');
    	system.debug(Mymap1);
        
        //Map<T1,T2>(mapToCopy)
        map<integer,string>Mymap2 = new map<integer,string>(Mymap1);
        boolean check = Mymap1.equals(Mymap2);
        system.debug(check);
        system.debug(Mymap2);
        
        //Map<ID,sObject>(recordList)
        List<Account> acc = [select Id,Name from Account];
		map<Id, Account>Mymap3 = new map<Id, Account>(acc);
        system.debug(Mymap3);
        
        //putAll(sobjectArray)
        map<id,Account> Mymap7 = new map<id,Account>();
        Mymap7.putAll(acc);
        system.debug('Adds the list of sObject records to a Mymap7 are :'+Mymap7);

        //clone()
		//Makes a duplicate copy of the map.
   		map<integer,string>Mymap4 = Mymap1.clone();
        Mymap1.get(1);
        
		map<string,string>Mymap5 = new map<string,string>();
		Mymap5.put('Mcs','Pune');
        Mymap5.put('BE','Mumbai');
        
		Boolean contains = Mymap5.containsKey('Mcs');
		System.assertEquals(true, contains);
        
		string m5 = Mymap5.get('Mcs');
        System.assertEquals('Pune', m5);

		boolean empty = Mymap5.isEmpty();
        System.assertEquals(false, empty);
        
        integer hashcode = Mymap5.hashcode();
        System.debug('Hashcode of Mymap5 is : '+hashcode);
        
        set<string> keys = new set<string>();
        keys = Mymap5.keyset();
        System.debug('Set of keys from Mymap5 are :' +keys);
        
        list<string> values = new list<string>();
        values = Mymap5.values();
        System.debug('List of values from Mymap5 are :' +values);
 
		map<string,string>Mymap6 = new map<string,string>();
        Mymap6.putAll(Mymap5);
        System.assertEquals(2,Mymap6.size());
        system.debug('Copied contents from Mymap5'+Mymap6+'Size of the Mymap6 is :'+Mymap6.size());
        
        string remove = Mymap6.remove('BE');
        system.debug('Size of the Mymap6 is after removing record :'+Mymap6.size());
    }
}