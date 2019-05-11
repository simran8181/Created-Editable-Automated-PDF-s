trigger Leadtrigger on Lead (before insert,before update) 
{
    List<Lead> leadlist = Trigger.new;
    for (Lead l:leadlist)
        {
            l.Salutation = 'Dr.'+ l.Salutation;
        }
}