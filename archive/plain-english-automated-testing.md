Before I forget I want to write this down ...

## Background

I've dedicated the last **3 years** to learning *several* Unit/Functional and 
Browser Testing frameworks and *none* of them jump out as *user friendly*.

I want ordinary non-technical users to be able to read/understand *exactly*
what the software they are using is doing and allow them to define 
*new* features in ***plain english***. (yes, this all ties into ideaQ ...)

My favorite testing framework in the Ruby world is 
[Cucumber](http://cukes.info/) which uses the 
[Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin) language 
to define behaviour. 

### Gherkin Example: *Given When Then*

```
 1: Feature: Some terse yet descriptive text of what is desired
 2:   Textual description of the business value of this feature
 3:   Business rules that govern the scope of the feature
 4:   Any additional information that will make the feature easier to understand
 5: 
 6:   Scenario: Some determinable business situation
 7:     Given some precondition
 8:       And some other precondition
 9:      When some action by the actor
10:       And some other action
11:       And yet another action
12:      Then some testable outcome is achieved
13:       And something else we can check happens too
```


## Verbs

### visit

**visit url** changes the **window.location** to a new url
in most cases this will only be used at the start of a scenario
e.g. **visit /login** starts us off on the login "page" (method)

Examples:
```
visit homepage
visit myapp.com
visit http://myapp.com
visit http://wwww.myapp.com/this/that/page.html
```

### click

**click #link** is a more human-readable version of $("#link").click();
Works with *both* **<a>** (link) and a **<button>** html elements.

Examples:
```
click #linkid      // finds element by id and clicks on it
click .linkclass   // not sure about classes ...
click "link text"  // finds link by text and clicks it
```

### form 

### select + option

**select #selectid option "optiontext"**
Allows us to target a **<select>** based on its **name** and/or **id**.
(as usual I prefer to use ids because they are unique)

Sample HTML:

```html
<select name="selectname" id="selectid">
  <option value="value1">Value 1</option> 
  <option value="value2" selected>Value 2</option>
  <option value="value3">Value 3</option>
</select>
```

example usage:
```
select #selectid option "value1"     // target select by id
select "selectname" option "value2"  // target select by name
```

see: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select

### input + value

**input #inputid value "text here"** I'm undecided on the quotes for string
but I think double quotes around space-separated strings are 
*probably* the way to go.

### checkbox + checked/unchecked

**checkbox #checkboxid checked** allows us to target a specific checkbox
by its element id and either marke it as **checked** or **unchecked**

example:
```
checkbox #checkboxid checked
checkbox #checkboxid unchecked
```

### radio + checked

**radio #red checked** lets us pick a radio option.

```
  <label for="red">Red</label>
  <input type="radio" id="red" label="Red" accesskey="R" name="color"/>
  <label for="green">Green</label>
  <input type="radio" id="green" label="Green"  accesskey="G" selected="true" name="color"/>
  <label for="blue">Blue</label>
  <input type="radio" id="blue" label="Blue"  accesskey="B" name="color"/>
```



### submit

Submit a specific form.
I've seen plenty of web sites/pages with multiple forms on a single html page.
E.g. a login, search and contact form on the same page.
We need a logical way of submitting the desired form.

```
submit #formid
```
This is *not a priority*. We can just do **click #submit**.


## Expect(ations)

Once we have performed a set of actions we want to **test** what we expect
to "see" on the page. e.g. text or state has changed.

### exists

tests for the existence of a DOM element with a specific id.

example:
```
visit homepage
expect form#login exists
```
### url

Test if a **url** is what we *expect* it to be.

```
visit http://thisshouldfail
expect error 404
```


### value

Test if a **value** is what we *expect* it to be.

```
visit homepage
expect form#login exists
```


notes:
- https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms_in_HTML
- https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5/HTML5_element_list#Forms


- Cucumber JS: http://transitioning.to/2012/01/cucumber-and-js-getting-started-with-cucumber-js/
- http://en.wikipedia.org/wiki/Behavior-driven_development