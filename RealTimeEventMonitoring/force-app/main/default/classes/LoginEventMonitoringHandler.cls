public inherited sharing class LoginEventMonitoringHandler {
    public static List<LoginEvent> getReportEvents() {
        return [SELECT 
                    Username, SourceIP, Country, City
                FROM 
                    LoginEvent 
                where 
                    EventDate = Today];
        }
}
