class PagesController < ApplicationController

def home
  @time = Date.today
end

def about
end

def index
end

def contact
  @members = ["John", "Paul", "Bob", "Mike"]

if params[:member]
  @members = @members.select { |member| member.start_with?(params[:member]) }
end

end


end
