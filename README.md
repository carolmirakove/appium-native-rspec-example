appium-native-rspec-example
===========================

This repository contains some example blackbox tests using Appium with Ruby bindings and the [Appium example app UICatalog](http://github.com/appium/sample-code/blob/master/sample-code/examples/ruby/UICatalog.app.zip) as the application under test.

To run the tests in this repo, do the following:

Run [Appium](https://github.com/appium/appium) 

Look at the app path in <code>appium.txt</code> amd confirm it matches your copy of the [Appium example app UICatalog](http://github.com/appium/sample-code/blob/master/sample-code/examples/ruby/UICatalog.app.zip); if not, edit the path
(Note: I did not check in the UICatalog app with my tests lest I give the false impression that I developed the app)

Navigate to the <code>spec</code> directory and filter by tags, e.g., use the following command to run all tests that have been tagged with <code>:smoke</code>:

```
rspec . -t smoke
```

Helpful Resources
=================
In my learning Appium I have been grateful for the [project  documentation](http://appium.io/slate/en/master/?ruby#), Dave Hunt's [Appium Bootcamp](http://sauceio.com/index.php/2014/07/appium-bootcamp-get-started-with-appium-testing-chapter-1/) as well as his [Selenium Guidebook](http://davehaeffner.com/selenium-guidebook/) plus 
[bootstraponline's](http://www.github.com/bootstraponline)
bootstraponline's pointing me to the [Appium Ruby Console](https://github.com/appium/ruby_console) at a Selenium meetup in NYC.

I have applied my own Ruby practices to their examples.
