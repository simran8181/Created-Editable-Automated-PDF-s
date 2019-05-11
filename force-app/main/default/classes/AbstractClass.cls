public abstract class AbstractClass
{
	public abstract void calculate(double x);

     public class Square extends AbstractClass
     {
		public override void calculate (double x)
        {
            System.debug('Square of = ' + x*x);
        }
	 }

    public class SquareRoot extends AbstractClass
    {
        public override void calculate (double x)
        {
            System.debug('SquareRoot of = ' + Math.sqrt(x));
            
        }
        
    }

    public class cube extends AbstractClass
    {
        public override void calculate (double x)
        {
            System.debug('cube of ='+x*x*x);
        }
        
    }
}