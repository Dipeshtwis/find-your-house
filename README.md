# Find Your House

This project is based on Ruby on Rails for the RESTFUL API which provide the house information and also authenticate user for the favourite house. It's a real-world-like project, built with business specifications.
      

<div align="center">

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/Dipeshtwis/find-your-house)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/Dipeshtwis/find-your-house/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/Dipeshtwis/find-your-house/pulls)

</div>

## 📝 Contents

<p align="center">
<a href="#with">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ll">Live Demo Link</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#gs">Getting started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>
</p>

## 🔧 Built with<a name = "with"></a>

- Ruby on Rails (Version: 6.0.3.2)
- Ruby (Version: 2.7.1)
- Postgresql (version: 12)
- Rack Cors
- RESTful API

## Live Demo Link <a name = "ll"></a>

[Live Demo]()


## Getting Started <a name = "gs"></a>

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

~~~bash
$ git clone git@github.com:Dipeshtwis/find-your-house.git
$ cd find-your-house
$ bundle install
$ yarn install --check-files
~~~

Setup database with:

> make sure you have postgres sql installed and running on your local machine

> Go to config > database.yml

Replace ```xxx``` with your ```own``` postgres sql username and password instead of mine
```
username: xxx
password: xxx
```

> create and migrate the database by these commands

```
   rails db:create
   rails db:migrate
```

### How to run

Start server with:

```
    rails s
```

Open `http://localhost:3000/` in your browser.


## To run Test

~~~ruby
$ rails db:migrate RAILS_ENV=test
$ rspec --format documentation

~~~


## ✒️  Authors <a name = "author"></a>


👤 **Dipesh Kumar**

- Github: [@Dipeshtwis](https://github.com/Dipeshtwis)
- Twitter: [@97deepeshkumar](https://twitter.com/97deepeshkumar)
- Linkedin: [dipeshtwis](https://www.linkedin.com/in/dipeshtwis/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Dipeshtwis/find-your-house/issues).


## 👍 Show your support

Give a ⭐️ if you like this project!

## :clap: Acknowledgements

- Design Idea by: [Gregoire Vella](https://www.behance.net/gallery/37706679/Circle-(Landing-page-Dashboard-Mobile-App))

- Microverse: [@microverse](https://www.microverse.org/)

