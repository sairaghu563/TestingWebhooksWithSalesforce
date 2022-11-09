@RestResource(urlMapping ='/api/webhooks/demo/*')
global without sharing class GitHubTest {
    @HttpPost
    global static void demo123() {
        try {
            RestRequest req = RestContext.request;//to get the response data without parameters
            RestResponse res = RestContext.response;
            res.addHeader('Content-Type', 'application/json');
            // getting the requestBody(which is by default in Bolb fromat) and changing it to the string.f
            String responseString = req.requestBody.toString();
            System.debug('responseString : ' + responseString);
            res.responseBody = Blob.valueOf('{Success : true, event : "unknown"}');
            res.statusCode = 200;

        } catch (Exception e) {
            System.debug('exception happened ' + e.getMessage());
        }

    }

    @HttpGet
    global static String getMethod(){
        return '{"message" : "Successfully got the get request"}';
    }
}
