class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: handle_not_found

    private 

    def handle_not_found(exception) 
        # render json: {error: "Record not found"}, status: not_found 

        render json: {error: "#{exception.model} not found"}, status: not_found

    end
end
