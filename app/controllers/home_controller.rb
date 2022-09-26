class HomeController < ApplicationController
    def index 
        @today_tasks = Task.where(created_at: Date.today.all_day, user_id: current_user.id).order("updated_at DESC") if user_signed_in?
        @all_tasks = Task.where(user_id: current_user.id).order("updated_at DESC") if user_signed_in?
    end
end
