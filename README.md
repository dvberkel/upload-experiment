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