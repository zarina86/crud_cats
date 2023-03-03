# CRUD_CATS

CRUD_CATS is the application which allows to create/update/destroy cats.

## Before installation:
Install Ruby by following the instructions [link](https://www.ruby-lang.org/en/documentation/installation/).

Ruby version:   ```3.1.3```

Rails version: ```7.0.4.2```

## Installation:

Clone repository to your computer:

    git clone git@github.com:zarina86/crud_cats.git bbq

Move to the project directory:

    cd crud_cats

Run bundler command to install dependencies:

    bundle install

Database creation

    rails db:create
  

Database initialization

    rails db:migrate


Generate a new encrypted credentials file: 

    EDITOR=nano rails credentials:edit 

or 

    EDITOR="code --wait"  rails credentials:edit 

You can also generate new  new encrypted credentials file for environments:

    EDITOR="code --wait"  rails credentials:edit  --environment=production
    
 ## Project technologies:
  
 * Active Record - Postgresql
 
 * CSS - Bootstrap 5, custom styles
 
 * gem ransack

 * gem kaminari
 
 
 
 
