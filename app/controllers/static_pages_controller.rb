class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ landing_page ]

  def landing_page
    
  end

  def dashboard
  end

  def submit_attendance
    @user = current_user
    @date = Date.today
    @attendace = Attendance.find_or_create_by(user_id: @user.id, month: @date.month, year: @date.year)
    @attendace.update(present: (params[:is_present] == 'true'), on_day: @date, absence_reason: params[:reason])
    # TODO: Write logic to log if user present or
    redirect_to '/'
    
  end
end
