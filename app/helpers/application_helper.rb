module ApplicationHelper
    def user_type
        current_user.try(:admin?) ? 'admin' : 'user'
        current_user.try(:teacher?) ? 'teacher' : 'user'
        current_user.try(:student?) ? 'student' : 'user'
    end
end
