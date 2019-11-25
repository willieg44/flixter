class LessonsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_authorized_for_current_lesson, only: [:show]
    def show
        if not current_user.enrolled_in
            redirect_to_lesson_path, alert: 'Unathorized'
        end
    end

    private

    helper_method :current_lesson
    def current_lesson
        @current_lesson ||= Lesson.find(params[:id])
    end
end
