public class NewCaseListController
{
	public list<Case> getNewCases()
    {
        list<Case> cases = Database.query('Select Id,CaseNumber ' + 'From Case ' + 'Where Status=\'New\'');
        return cases;
    }
}