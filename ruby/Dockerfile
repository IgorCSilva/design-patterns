
# Use the official Ruby image from Docker Hub.
FROM ruby:3.3.0

# Set the working directory inside the container.
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container.
COPY Gemfile* design_patterns.gemspec ./

# Copy the version file into the container.
COPY lib/design_patterns/version.rb ./lib/design_patterns/version.rb

# Install dependencies using Bundler.
RUN bundle install

# Copy the rest of the application code into the container.
COPY . .

# Keeps the container available.
CMD ["tail", "-f", "/dev/null"]