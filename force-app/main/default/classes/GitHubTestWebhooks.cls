@RestResource(urlMapping = '/githubsalesforce/*')
global without sharing class GitHubTestWebhooks {
    @HttpPost
    global static void demo12345() {
        try {
            RestRequest req = RestContext.request;//to get the response data without parameters
            RestResponse res = RestContext.response;
            res.addHeader('Content-Type', 'application/json');
            // getting the requestBody(which is by default in Bolb fromat) and changing it to the string.f
            String responseString = req.requestBody.toString();
            System.debug('responseString : ' + responseString);
            res.responseBody = Blob.valueOf('{Success : true, event : "unknown from demo12345 post method"}');
            res.statusCode = 200;

        } catch (Exception e) {
            System.debug('exception happened ' + e.getMessage());
        }

    }

    @HttpGet
    global static String getMethod1(){
        return '{"message" : "Successfully got the get request from getMethod1"}';
    }
}
