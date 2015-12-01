http://docs.transifex.com/api

**project_slug** = scribus  
**resource_slug** = for 1.5 use '**scribus**' for 1.4 use '**scribus-14x**'

###Project Stats  
URLs:

    /project/<project_slug>/resource/<resource_slug>/stats/
    
    /project/<project_slug>/resource/<resource_slug>/stats/<lang_code>/

The latter should be used, if one is interested in the statistics for a particular language.

``curl -i -L --user user:password -X GET http://www.transifex.com/api/2/project/scribus/resource/scribus/stats/``
