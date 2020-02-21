/**
 * An apex page controller that exposes the site login functionality
 */
global with sharing class CommunitiesLoginController {

    global CommunitiesLoginController () {}
    
    // Code we will invoke on page load.
    global PageReference forwardToAuthPage() {
        String startUrl = System.currentPageReference().getParameters().get('startURL');
        String displayType = System.currentPageReference().getParameters().get('display');
        return Network.forwardToAuthPage(startUrl, displayType);
    }
    public PageReference forwardToCustomAuthPage() {
        if (UserInfo.getUserType()=='Guest') {
            String startUrl = ApexPages.currentPage().getParameters().get('startURL');
            return new PageReference(Site.getBaseURL() + '/JanrainLogin?startURL=' + EncodingUtil.urlEncode(startURL,'UTF­8'));
        } else {
            return new PageReference('https://mtmcommunity-developer-edition.na2.force.com/communityone/_ui/core/chatter/ui/ChatterPage');
        }
    }    
}