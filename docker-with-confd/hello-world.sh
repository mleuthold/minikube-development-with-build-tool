#!/bin/bash

echo hello $hello $SERVICES_EXAMPLE_TEXT

# read 'text' env var and export it as confd expected value
# set it to 'father' if it does not exist
export SERVICES_EXAMPLE_TEXT=${SERVICES_EXAMPLE_TEXT:-"father"}

export MYAPP_DATABASE_URL=db.example.com
export MYAPP_DATABASE_USER=rob

# run confd to render out the config
confd -onetime -backend env

# run app
