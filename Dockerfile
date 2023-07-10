# Use an official Ruby runtime as a parent image
FROM ruby:3.1.2

# Install nodejs and yarn
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in Gemfile
RUN bundle install

# Install any needed packages specified in package.json
RUN yarn install

# Expose port 3000 for the API
EXPOSE 3000

# The command to run our app when the container is run
CMD ["rails", "server", "-b", "0.0.0.0"]
