trigger accdelete on Account (before delete)
{
    for(account acc : trigger.old)
    {
        acc.adderror('You can not delete account record');
    }
}