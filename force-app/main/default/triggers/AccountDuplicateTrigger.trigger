trigger AccountDuplicateTrigger on Account (before insert,before update) 
{
    Set<string> Lis=new Set<string>();

    List<account> Li=[select name from account];
    for(Account A: Li)
    {
        Lis.add(A.name);
    }
    Boolean B;
    for(account L1:Trigger.new)
    {
        B=Lis.contains(L1.name);
        if(B==true)
        {
            L1.adderror('duplicate account');

        }
    }
}