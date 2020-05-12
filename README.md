# Thermostat: business logic

[Back to the Challenge Map](README.md)

Alrighty. Now that you've got the basics under your fingers, it's time for a new domain.

In this challenge, you will build the logic needed to model a simple thermostat.

### Challenge setup

Specification:

* Thermostat starts at 20 degrees
* You can increase the temperature with an up function
* You can decrease the temperature with a down function
* The minimum temperature is 10 degrees
* If power saving mode is on, the maximum temperature is 25 degrees
* If power saving mode is off, the maximum temperature is 32 degrees
* Power saving mode is on by default
* You can reset the temperature to 20 with a reset function
* You can ask about the thermostat's current energy usage: < 18 is `low-usage`, < 25 is `medium-usage`, anything else is `high-usage`.
* (In the challenges where we add an interface, low-usage will be indicated with green, medium-usage indicated with black, high-usage indicated with red.)

### Learning Objectives covered
* Use Jasmine to Test-Drive Development of a thermostat

### To complete this challenge, you will need to:
- [ ] Translate the first specification into a test
- [ ] Pass the test
- [ ] Translate the next specification
- [ ] Repeat until you've run out of tests


# Thermostat: interface

You now have some well tested business logic, representing simple model of a thermostat. However, at the moment, the only way you can interact with the code is either through the console or tests. It's time to build a user interface.

In this challenge, you will build the skeleton of a UI, so that you can then start interacting with your underlying logic.

### Learning Objectives covered

- Using HTML/CSS to create a user interface on the web.

### To complete this challenge, you will need to:

- [ ] Decide what HTML elements you will need to serve as controls on the thermostat.  Decide what HTML elements you will need to display the thermostat data.
- [ ] Build a static HTML page with these elements, labelling them with appropriate classes and/or IDs.
- [ ] You don't need to hook up your thermostat model to the user interface.  That comes in the next challenge!
- [ ] Add a `script` tag to load your thermostat JavaScript file into the page.
- [ ] Open the developer console and check you can instantiate a thermostat object and call methods on it.


# Thermostat: jQuery

Now, you are at the point which excites a lot of people, and is also JavaScript's unique superpower - dynamically changing content on a webpage. Using JavaScript, we can grab any element on the page, change its HTML and CSS, delete it, move it elsewhere, draw on the page, and many other funtastic things. Seeing as so far all user interaction you've done so far has been through the medium of forms and links, this will hopefully excite you.

In this challenge, you will manipulate the Document Object Model (DOM) using JavaScript and jQuery.

### Challenge setup

The first part of this challenge is intentionally left really open. When you first use jQuery, you should play with it, mainly because changing things on the page is still going to be fun. Make the background of the page silly colours. Go find other pages on the web that have jQuery. Generally, if typing `jQuery` in the console returns something, you're in business. Insert rude words. Delete banners. Replace all the pictures on the page with Nikesh.

### Learning Objectives covered

- Explain some benefits of using jQuery above 'raw' JavaScript
- Explain some common jQuery idioms, such as `$(document).ready();`
- Use jQuery to build interactive functionality into a webpage
- Understand some things about how jQuery uses the technique of callbacks

### To complete this challenge, you will need to:
- [ ] Add jQuery to the page
- [ ] Play with jQuery
- [ ] Play with jQuery a bit more
- [ ] Go to [You Might Not Need jQuery](http://youmightnotneedjquery.com/) and see the vanilla JavaScript you would have to write. It's good to at least know that you can do it without jQuery, and to understand that it's all just JavaScript under the hood.
- [ ] Create another file that will hold your JavaScript code that manages the interface between the UI and the thermostat object.  Load the file into your HTML page.
- [ ] Hook up your buttons/links so they run the methods on the underlying thermostat model
