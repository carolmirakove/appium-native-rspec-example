Appium Rspec Cross Platform
===========================

This repository contains some example blackbox tests using Appium with Ruby bindings and the [Appium example app UICatalog](http://github.com/appium/sample-code/blob/master/sample-code/examples/ruby/UICatalog.app.zip) as the application under test.

## To run the tests in this repo, do the following:


Make sure the app path in the <code>appium.txt</code> matches your copy of the [Appium example app UICatalog](http://github.com/appium/sample-code/blob/master/sample-code/examples/ruby/UICatalog.app.zip) (Note: I did not check in the UICatalog app with my tests lest I give the false impression that I created the app)

Run your specs with rspec as follows:
```
spec /path/to/spec -t some_tag
```

For Crossplatfor running the target platform should be specified by `android` or `ios` then call the file you want to run. To do this, simple we can call the `run.rb` file with desired parameters as follows:
```
ruby run.rb android -t smoke
ruby run.rb android
ruby run.rb ios -t smoke
ruby run.rb ios
```

Helpful Resources
=================
In my learning Appium I have been grateful for the [project  documentation](http://appium.io/slate/en/master/?ruby#), Dave Haeffner's [Appium Bootcamp](http://sauceio.com/index.php/2014/07/appium-bootcamp-get-started-with-appium-testing-chapter-1/) as well as his [Selenium Guidebook](http://davehaeffner.com/selenium-guidebook/) plus 
[bootstraponline's](http://www.github.com/bootstraponline) pointing me to the [Appium Ruby Console](https://github.com/appium/ruby_console) at a Selenium meetup in NYC.

I have applied my own Ruby practices to their examples.
