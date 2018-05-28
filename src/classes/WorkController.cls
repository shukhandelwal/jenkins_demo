public class WorkController {
    
    public String searchVideo {get; set;} 
    public  WorkController.Item[] items {get;  set;}
    private static final String SEARCH_URL = 'https://www.googleapis.com/youtube/v3/search';
    private static final String API_KEY = 'AIzaSyAFm5GJcdRRmpHbDjAySwObZkwogFHtasI';
    
    Public PageReference search(){
    Http http=new Http();
    HttpRequest request= new HttpRequest();
    HttpResponse response=null;
    
      String endpoint = SEARCH_URL +
            '?part=snippet' +
            '&maxResults=20' +
            '&type=video' +
            '&q=' + EncodingUtil.urlEncode(searchVideo,'UTF-8') +
            '&key=' + API_KEY;
    request.setEndPoint(endpoint);
    request.setMethod('GET');
    try{
        response=http.send(request);
        System.debug('response is : '+ response.getBody());
    }catch(Exception e){
        
    }
        ResponseObject responseObj=(ResponseObject)JSON.deserialize(response.getBody(),WorkController.ResponseObject.class);
        this.items=responseObj.items;
        
        System.debug('next token'+responseObj.nextPageToken);
        
       return null; 
   }
    
    
    public class ResponseObject{
        
        public String kind {get; set;}
        public String etag {get; set;}
        public String nextPageToken {get; set;}
        public String prevPageToken {get; set;}
        public WorkController.PageInfo pageInfo{get; set;}
        public WorkController.Item[] items {get; set;}
    }
    
    
    public class PageInfo{
        public Integer totalResults {get; set;}
        public Integer resultsPerPage {get;  set;}
    }
    
    public class Item {
        public String kind {get; set;}
        public String etag {get; set;}
        public WorkController.Id id {get; set;}
        public WorkController.Snippet snippet{get; set;}    
    }   
    
    public class Snippet{
        public String publishedAt {get; set;}
        public String channelId {get; set;}
        public String title {get; set;}
        public String description {get; set;}
        public WorkController.Thumbnails thumbnails{get; set;}
        public String channelTitle { get; set; }
        public String liveBroadcastContent { get; set; }
    }
    
    public class Thumbnails{
        public WorkController.Thumbnail medium{get; set;}
        public WorkController.Thumbnail high{get; set;}
        
    }
    
    public class Thumbnail{
        public String url {get; set;} 
    }
    public class Id{
        public String kind {get; set;}
        public String videoId {get; set;}
    }
    
}