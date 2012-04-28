#! /usr/bin/env ruby

require "rubygems"
require "bundler/setup"

require "aws/s3"

include AWS::S3

AWS::S3::Base.establish_connection!(
  :access_key_id     => ENV['AMAZON_ACCESS_KEY_ID'],
  :secret_access_key => ENV['AMAZON_SECRET_ACCESS_KEY'],
  :use_ssl => true,
)


Service.buckets.each do |bucket|
  if (bucket.name == '37buckets') then
    puts bucket.name
  end
end
