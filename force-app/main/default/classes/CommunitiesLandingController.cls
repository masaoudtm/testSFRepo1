/**
 * An apex page controller that takes the user to the right start page based on credentials or lack thereof
 */
public with sharing class CommunitiesLandingController {
    
    // Code we will invoke on page load.
    public PageReference forwardToStartPage() {
        return Network.communitiesLanding();
    }
    
    public PageReference forwardToCustomAuthPage() {
        if (UserInfo.getUserType()=='Guest') {
            String startUrl = ApexPages.currentPage().getParameters().get('startURL');
            return new PageReference(Site.getBaseURL() + '/JanrainLogin?startURL=' + EncodingUtil.urlEncode(startURL,'UTF­8'));
        } else {
            return new PageReference('https://mtmcommunity-developer-edition.na2.force.com/communityone/_ui/core/chatter/ui/ChatterPage');
        }
    }
    
    public CommunitiesLandingController() {}
}