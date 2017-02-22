require 'bundler/setup'
require 'sinatra'
require_relative 'hipster'
require_relative 'samuel'
require_relative 'standard'

get "/" do
  "Hello World!"
end

get "/lorem/:lipsum/?:num?" do
  %w(standard sipster samuel).include? params[:lipsum]
    Object.const_get(params[:lipsum].capitalize).call(params[:num])
end

get "/:lipsum" do
  "hello #{params[:lipsum].capitalize}"
end

get "" do
  status 400
    post.errors.full_messages.join("\n")
end
