global class BatchClass1 implements Database.Batchable<sObject>,Database.AllowsCallouts {
    public Database.querylocator start(Database.BatchableContext Bc){
        String q ='Select Id FROM Account';
        return Database.getQueryLocator(q);
    }
    public void execute(Database.BatchableContext Bc, List<Account> sc){
        for(Account acc:sc){
            acc.Name = 'Deepak';
        }
        update sc;
        
    }
    public void finish(Database.BatchableContext Bc){
        System.debug('The Batch apex job is completed');
    }
}