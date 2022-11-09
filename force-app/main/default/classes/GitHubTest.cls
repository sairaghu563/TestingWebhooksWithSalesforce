@RestResource(urlMapping ='/api/webhooks/demo/*')
global with sharing class GitHubTest {
    @HttpPost
    global static void demo123() {
        try {
            RestRequest req = RestContext.request;
            RestResponse res = RestContext.response;
        } catch (Exception e) {
            System.debug('exception happened ' + e.getMessage());
        }

    }
}
