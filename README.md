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


&#9744; Set up SVG Icon for nav bar  
&#9745; Add Font-awesome icon for GitHub in login and create account forms  
&#9744; Consolidate the images folders ... bypass Assets pipeline  
&#9744; Method to convert movie duration time  
&#9744; test Filterific gem  
&#9744; Research wait for movie_detail [EM-HTTP](https://github.com/igrigorik/em-http-request/tree/master)  
&#9744; Add Search controller  
&#9744; Fix Heroku deploy  
\- &#9744; Add Procfile  
&#9744; Devise expansion -- Add more 0Auth providers to login  
&#9744; Add pagination on index page  
&#9744; Add Search controller  
&#9744; Add recommended movie section  
&#9744; Add Cast Section to movie details  
&#9744; Migrate to Postgres  
    &#9744; Add Genre array  
    &#9744; Add Genre pill badges  
    &#9744; Add Cast Section to movie details  
    &#9744; Add Recommended Movies section  
&#9744; Add Fandango API for local movie times  
&#9744; Dockerize App  
    &#9744; Deploy to Digital Ocean  
&#9744; Migrate to React using Redux with Rails API

## Contributing
Please read [CONTRIBUTING](./CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors
**Chuck Smith** - *Initial work* - [EclecticCoding](https://github.com/eclectic-coding)

See also the list of [contributors](https://github.com/eclectic-coding/rails-movie-browser/graphs/contributors)<!-- @IGNORE PREVIOUS: link --> who participated in this project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

