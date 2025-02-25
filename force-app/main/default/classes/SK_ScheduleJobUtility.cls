public class SK_ScheduleJobUtility
{
public static void findScheduledJobDetails(string jobType)
{
string jobTypeNumber=jobTypeMap.get(jobType);
if(jobTypeNumber!=null && jobTypeNumber!='')
{
List<CronTrigger> cjList=new List<CronTrigger>();
Set<string> userIdSet = new Set<string>();
Set<string> IdSet = new Set<string>();
set<string> acc=new set<string>();

    list<Report>ReportList=new list<Report>();
for(CronTrigger cj :[select id, CronJobDetailId,CronJobDetail.Name,CronJobDetail.JobType,ownerId from CronTrigger where CronJobDetail.JobType=:jobTypeNumber])
{
userIdSet.add(cj.ownerId);
cjList.add(cj);
 acc.add(cj.CronJobDetail.name);  
    system.debug('Cron Trigger List'+cj);
}
Map<Id,Report> mapA = new Map<Id,Report>([Select id, name from Report where id in:acc]);
system.debug('mapA'+mapA);
system.debug('Report List'+ReportList);
//fetch user information as we cannot access user details using child to parent query using dot notation
Map<string,User> userMap= new Map<string,User>();
for(User userRecord:[select id,username,email,IsActive from User where Id IN:userIdSet])
{
userMap.put(userRecord.Id,userRecord);
}

string header = 'Job Id , Name, JobType,Submittedby Username,SubmittedBy Userid, User IsActive, User Email \n';
string finalstr = header ;
string recordString='';
String AA;
    for(CronTrigger jb: cjList)
    {
    if(mapA.keyset().contains(jb.CronJobDetail.Name)) {        
     Report rr = mapA.get(jb.CronJobDetail.Name);
     AA = rr.name;
    }
    system.debug('+++AA'+AA);
recordString = jb.Id+','+AA+','+jobType + ','+userMap.get(jb.ownerId).username + ','+jb.ownerId + ','+userMap.get(jb.ownerId).IsActive + ',' +userMap.get(jb.ownerId).email+'\n';
finalstr = finalstr +recordString;
    system.debug('finalstr'+finalstr);

    }
   
Messaging.EmailFileAttachment csvAttc = new Messaging.EmailFileAttachment();
blob csvBlob = Blob.valueOf(finalstr);
system.debug('++csvBlob'+csvBlob);
string csvname= jobType+ ':Schedule Job List'+system.now()+'.csv';
csvAttc.setFileName(csvname);
csvAttc.setBody(csvBlob);
Messaging.SingleEmailMessage email =new Messaging.SingleEmailMessage();
String[] toAddresses = new list<string> {UserInfo.getUserEmail()};
String subject =jobType+': Scheduled jobs report';
email.setSubject(subject);
email.setToAddresses( toAddresses );
email.setPlainTextBody(subject);
email.setFileAttachments(new Messaging.EmailFileAttachment[]{csvAttc});
Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});

}
}

public static Map<string,string> jobTypeMap = new Map<string, string>{
'Data Export' => '0',
'Weekly Export' => '1',
'Test' => '2',
'Dashboard Refresh' => '3',
'Reporting Snapshot' => '4',
'System' => '5',
'Scheduled Apex'=>'7',
'Report Run' => '8',
'Batch Job' => '9'
};
}