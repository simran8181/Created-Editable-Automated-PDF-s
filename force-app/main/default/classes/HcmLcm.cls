public class HcmLcm 
{
	public integer a=8,b=20,x,y,t,hcf,lcm;
    public HcmLcm(integer a,integer b)
    {
        this.a=x;
        this.b=y;
    }
    
    public void findhcflcm()
    {
    	while(b != 0)
        {
            t = b;
            b = (math.mod(a,b));
            a = t;
        }
		
        hcf = a;
        lcm = (x*y)/hcf;
		
        //system.debug('HCF = ' +hcf);
       // system.debug('\nLCM = ' +lcm);
    }
}