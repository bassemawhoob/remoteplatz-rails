# Demo Ruby Application

An apporach for: https://github.com/internsvalley/Ruby-on-rails-full-stack-test

A deployed version is live on Heroku and is briefly discussed below

## 1. API Task - Features implemented:
1. Email validation
   * GET: http://remoteplatz-emailvalidation.herokuapp.com/validate?email=insert_email_here
2. Request rate throttling
   * Every IP will be blocked after 5 requests/second for 2 minutes then will automtically be whitelisted again
3. API parameters validation
   * All requests are checked for the presence of an email parameter and nothing extra. An error will be raised if such happens
4. Error handling
   * All possible scenarios that the 3rd party provider may encouter are well handled and documented in the code

## 2. Pricing algorithm



