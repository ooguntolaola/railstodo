class HomeController < ApplicationController


    def trash
        @trash = List.where(:completed => true).destroy_all
         redirect_to root_url, notice: "All Marked Items Were Succesfully Deleted." 
    end
      
    def trash_all
        @trash_all = List.all.destroy_all
        redirect_to root_url, notice: "All Items Were Succesfully Deleted." 
    end



end