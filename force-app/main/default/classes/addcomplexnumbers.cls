public class addcomplexnumbers 
{
    		integer Real,Imag;
    		public addcomplexnumbers()
			{}
			public addcomplexnumbers(integer Real1,integer Imag1)
			{
				Real=Real1;
				Imag=Imag1;
			}
			public addcomplexnumbers AddComplex(addcomplexnumbers C1,addcomplexnumbers C2)
			{
				addcomplexnumbers CSum=new addcomplexnumbers();
				CSum.Real=C1.Real+C2.Real;
				CSum.Imag=C1.Imag+C2.Imag;
                system.debug('Addition of two complex numbers is : '+CSum);
                
                return CSum;
			}
}