trigger AccountUpdateField on Account (before insert , before update) 
{
    List<Account> accs = Trigger.new;
    AccountClass my= new AccountClass(); //creating instance of apex class
    my.addHelloWorld(accs); // calling method from the apex class
}