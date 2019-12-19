# Rails Movie Browser
![](./movie-browser.jpg)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing

Clone this repository to your computer:
```
git clone https://github.com/eclectic-coding/sinatra-todo-app
```
**Prerequisites**
This app uses two API's and uou will need to register for API keys from the following two services:
- [GitHub](https://docs.cachethq.io/docs/github-oauth-token)
- [MovieDB](https://developers.themoviedb.org/3/getting-started/introduction)
After you have yopur keys, create a `.env` file in the root of the project and add your keys:
```
GITHUB_KEY=PUBLIC_KEY
GITHUB_SECRET=YOUR_SECRET_KEY
MOVIE_API=MOVIE_DB_API_KEY
```

Navigate to your newly created directory and run `bundle install`. Then set up the database: 

```
rails db:migrate && rails db:seed
```
End with an example of getting some data out of the system or using it for a little demo

## Using Movie Browser

Video Walk Through on [Vimeo](https://vimeo.com/378181978)

## Future Features

- [ ] Set up SVG Icon for nav bar
- [ ] Add Font-awesome icon for GitHub in login and create account forms
- [ ] Consolidate the images folders
- [ ] Method to convert movie duration time
- [ ] Research wait for movie_detail [EM-HTTP](https://github.com/igrigorik/em-http-request/tree/master)
- [ ] Add Search controller
- [ ] Fix Heroku deploy
  - [ ] Add Procfile
- [ ] Devise expansion
  - [ ] Add more 0Auth providers to login
- [ ] Add pagination on index page
- [ ] Add Search controller
- [ ] Add recommended movie section
- [ ] Add Cast Section to movie details
- [ ] Migrate to Postgres
  - [ ] Add Genre array
  - [ ] Add Genre pill badges
  - [ ] Add Cast Section to movie details
  - [ ] Add Recommended Movies section
- [ ] Add Fandango API for local movie times
- [ ] Dockerize App
  - [ ] Deploy to Digital Ocean
- [ ] Migrate to Vue.js with Rails API

## Contributing
Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning
We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags)<!-- @IGNORE PREVIOUS: link -->.

## Authors
* **Chuck Smith** - *Initial work* - [EclecticCoding](https://github.com/eclectic-coding)

See also the list of [contributors](https://github.com/eclectic-coding/rails-movie-browser/graphs/contributors)<!-- @IGNORE PREVIOUS: link --> who participated in this project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

