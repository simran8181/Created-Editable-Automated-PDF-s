trigger UpdateContactNumOnFirstName on Contact (before insert , before update) 
{
    for(Contact cont : Trigger.new)
    {
        if(cont.FirstName != Null)
        {
           cont.MobilePhone = '7887870481';
        }
    }
}