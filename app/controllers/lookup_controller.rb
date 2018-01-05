class LookupController < ApplicationController
  def search
  end

  def results
  	if params[:name] != nil
	    name_arr = params[:name].split

	    @results = Contact.where(first_name: name_arr[0], last_name: name_arr[1])
	elsif params[:city] != nil
	    @results = Contact.where(city: params[:city])	
        end
    end
end
