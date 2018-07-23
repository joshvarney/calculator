require 'sinatra'
require_relative 'calculator.rb'
enable :sessions

get '/' do
	erb :login_page, locals:{error: ""}
end
get '/login' do
	erb :login_page, locals:{error: ""}
end
post '/login' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	user_name = params[:user_name]
	password = params[:password]
	user_name1 = "admin"
	password1 = "admin"
	user_name2 = "student"
	password2 = "minedminds"
	user_name3 = "guest"
	password3 = "guest1"
	if user_name == user_name1 && password == password1 
	 	redirect '/calculator_page?user_name=' + user_name + '&first_name=' + first_name + '&last_name=' + last_name
	elsif user_name == user_name2 && password == password2 
	 	redirect '/calculator_page?user_name=' + user_name + '&first_name=' + first_name + '&last_name=' + last_name
	elsif user_name == user_name3 && password == password3 
	 	redirect '/calculator_page?user_name=' + user_name + '&first_name=' + first_name + '&last_name=' + last_name
	elsif user_name != user_name1 && user_name != user_name2 && user_name != user_name3
		error = "User Name Incorrect"
		erb :login_page, locals:{error: "User Name Incorrect"}
	elsif user_name == user_name1 && password != password1
		error = "Password Incorrect"
		erb :login_page, locals:{error: "Password Incorrect"}
	elsif user_name == user_name2 && password != password2
		error = "Password Incorrect"
		erb :login_page, locals:{error: "Password Incorrect"}
	elsif user_name == user_name3 && password != password3
		error = "Password Incorrect"
		erb :login_page, locals:{error: "Password Incorrect"}	
	end
end
get '/calculator_page' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	user_name = params[:user_name]
	erb :calculator_page, locals:{num1: "", user_name: params[:user_name], first_name: params[:first_name], last_name: params[:last_name]}
end
post '/calculator' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	user_name = params[:user_name]
	num1 = params[:num1]
		if num1.split("").count > 1
			num3 = num1.split("").last
				if num3 == "."
					num1 = num1.split("")[0..-2].join
				end
		else
			num1
		end		
	  num1
	params[:num1] = num1
	operator = params[:operator]
	num2 = params[:num2]
		if num2.split("").count > 1
			num4 = num2.split("").last
				if num4 == "."
					num2 = num2.split("")[0..-2].join
				end
		else
			num2
		end		
	  num2
	params[:num2] = num2
	p params
	session[:solution] = calculator(params[:num1], params[:operator], params[:num2])
	erb :calculator_page, locals:{user_name: params[:user_name], first_name: params[:first_name], last_name: params[:last_name], num1: params[:num1], operator: params[:operator], num2: params[:num2], solution: session[:solution]}
end
get '/credentials' do
	erb :credentials
end
