Country-List
============

Its pain in the AZZ to collect the Countries List and their Calling Codes.

So here it is, a small library to provide you a View Controller with Country List along with Calling Code and Country Code.

![Screen 1](https://github.com/pradyumnad/Country-List/blob/master/ScreenShot.png?raw=true)

Including into your Project
---------------------------
  Drag and Drop CountryList folder to your Project and add the below code snippet in the button action method.

    CountryListViewController *cv = [[CountryListViewController alloc] initWithNibName:@"CountryListViewController" delegate:self];
    [self presentViewController:cv animated:YES completion:NULL];
    
Implement the delegate CountryListDelegate

    - (void)didSelectCountry:(NSDictionary *)country
    {
        NSLog(@"Selected Country : %@", country);
    }

Contact
-------
Follow [@pradyumna_d](http://twitter.com/pradyumna_d) on Twitter for the latest news.

License
------------
Available under the CC BY 3.0 license. See the LICENSE file for more info.

Attribution
-----------

Thanks to Mr Nicolas Goles for his awesome gist https://gist.github.com/Goles/3196253
