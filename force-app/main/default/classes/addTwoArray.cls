public class addTwoArray 
{
	public void check()
    {
        List<Integer> l1 = new List<Integer>();
		l1.add(81);
		l1.add(91);
		List<Integer> l2 = new List<Integer>(l1);
        l2.add(101);
        l2.add(111);
        System.debug('First list is :'+l1);
        System.debug('Second list is :'+l2);
 	}
}