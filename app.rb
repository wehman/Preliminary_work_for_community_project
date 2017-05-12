require 'sinatra'
require "sinatra/reloader" if development?
# require_relative "file_name.rb"

get '/' do  
   erb :students
end

post '/show_student_input' do
	last_name = params[:last_name]
	middle_initial = params[:middle_initial]
	first_name = params[:first_name]
	erb :show_student_input, :locals => {:first_name => first_name, :middle_initial => middle_initial, :last_name => last_name}
end