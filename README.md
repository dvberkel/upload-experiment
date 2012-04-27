Upload Experiment
=================

This project experiments with the
[aws-s3](https://github.com/marcel/aws-s3 "marcel/aws-s3 project on GitHub")
to upload data to Amazon.

Environment
-----------

aws-s3 is a ruby gem. We use
[rvm](https://rvm.io// "rvm homepage")
to control the environment of installed gems.

Run the following commands to create the proper gemset

    > rvm use 1.9.2
    > rvm gemset upload

The `.rvmrc` file, when accepted is, will choose this gemset upon
entering the directory.

Furthermore, we use
[bundler](http://gembundler.com/ "Bundler homepage")
to gather the dependencies.

You can install bundler with the following command

    > gem install bundler

To install the dependencies execute

    > bundle install

Authentication
--------------

In order to communicate with Amazon you have to authenticate
yourself. This should be done with an Amazon acces key id and the
corresponding secret key.
(See the 
[Amazon
documentation](https://payments.amazon.com/sdui/sdui/helpTab/Checkout-by-Amazon/Advanced-Integration-Help/Using-Your-Access-Key
"Amazon on keys") for more information)

It is of the utmost important that you do not share these keys. Other
could use them and you would be billed. It is a best practice to
refer to them via environment variables.

For example when you create an `.amazon` file like so

    export AMAZON_ACCESS_KEY_ID='abcdefghijklmnop'
    export AMAZON_SECRET_ACCESS_KEY='1234567891012345'

and incorporate the following inside a `.bashrc`

    if [[ -f "$HOME/.amazon_keys" ]]; 
    then
        source "$HOME/.amazon_keys";
    fi

They will be available and used by the aws-s3 gem.