
class Dog

  attr_accessor :name , :breed, :age

  @@all=[]
  def initialized(name, breed, age)
      @name = name 
      @breed = breed 
      @age = age 

      @@all << self
  end

  def self.all
      @@all
  end

end

class ApplicationController < Sinatra::Base

  
  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end
