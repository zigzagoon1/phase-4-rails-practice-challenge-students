class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show

    end

    def create

    end

    def update

    end

    def destroy

    end

    private 

    def student_params
        params.permit(:name, :major, :age)
    end

    def render_invalid_response
        render json: {errors: ["Invalid response"]}
    end

    def render_not_found_response
        render json: {errors: ["Not found"]}
    end

end
