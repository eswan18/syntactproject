# The Syntact Project

This repo is the jekyll backend of the Syntact Project, a collaborative blog edited by myself, Fernando Garcia, and Matt Gillham.
Check it out for yourself at [syntactproject.com](http://syntactproject.com).

## Running Yourself
The Syntact Project site is fully containerized.
If you'd like to run it on your local machine, follow these steps:

1. Install [Docker](https://www.docker.com/), preferably Community Edition, on your local machine.
2. Clone this repo into a location of your choosing.
3. Navigate into the repo and build the image defined in the Dockerfile: `docker build . -t syntactproject`
4. Run a container from this image: `docker run -t -p 4000:4000 syntactproject`
5. Navigate to [localhost:4000](http://localhost:4000) in your browser.
