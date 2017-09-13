### 20140213

Spent the evening reacquainting myself with [Meteor](https://www.meteor.com/)

Followed this tutorial: https://www.openshift.com/blogs/day-15-meteor-building-a-web-app-from-scratch-in-meteor

And made: http://epoll2.meteor.com/

![Poll Meteor Example](http://i.imgur.com/IVRa1Pi.png "Poll Meteor Example")

***GreatSuccesss*** :-)

- App Keys: https://apps.twitter.com/app/5807323/keys

> App Keys: https://apps.twitter.com/app/5807323/keys

- - - 

- File upload example: https://github.com/schofld/fileUpload

#### Accounts + Accounts UI

- Basic Auth (Video Tutorial): https://www.meteor.com/authcast
- Custom Auth: http://blog.benmcmahen.com/post/41741539120/building-a-customized-accounts-ui-for-meteor

```
meteor add accounts-base
meteor add accounts-password
```

#### Meteorite / Atmosphere

See: https://github.com/oortcloud/meteorite

```sh
npm install -g meteorite
```

#### Iron Router (gives us Routes)

See: https://github.com/EventedMind/iron-router
(requires meteorite. see above)

```sh
mrt add iron-router
```

##### Trouble shooting

If you get this error:

```
error: no such package: 'iron-router'
```

try: http://stackoverflow.com/questions/20584822/error-no-such-package-when-bundling-meteor-js-app

Shut down your meteor process.
then update meteorite:

```
mrt update
```


#### Heroku

- Meteor deploy to heroku: http://stackoverflow.com/questions/17117965/how-to-deploy-meteor-0-6-0-to-heroku
- http://bytesofpi.com/post/20898722298/pushing-your-meteor-project-to-heroku

#### Testing

- RTD: http://xolvio.github.io/rtd/
- Travis: http://meteorhacks.com/travis-ci-support-for-meteor-packages.html

#### MongoDB

- Local: https://github.com/andzdroid/mongo-express

Remember to edit the config.js file and change the mongodb port to 3002

### Front-end

- Bootstrap Buttons: http://getbootstrap.com/css/#buttons
- Flat UI: http://designmodo.github.io/Flat-UI/
