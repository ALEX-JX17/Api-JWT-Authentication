class ApplicationController < ActionController::API
    include JsonWebToken

    before_action :authentication_request

    private
    def authentication_request
        header = request.headers['Authorization']
        token = header.split(' ').last if header
        decoded = jwt_decode(token)
        @current_user = User.find(decoded[:user_id])
    end

end
