class InstructorController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        instructor = Instructor.find_by(id: params[:id])
        render json: instructor
    end

    def create
        instructor = Instructor.create!(instructor_params)
        render json: instructor, status: :created
    end

    def update
        instructor = Instructor.find_by(id: params[:id])
        @instructor.update!(instructor_params)
        render json: @instructor, status: :accepted
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructory.destroy
        head :no_content
    end


    private 

    def instructor_params
        params.permit(:name)
    end

    def render_invalid_response
        render json: {errors: ["Invalid response"]}, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: {errors: ["Not found"]}, status: :not_found
    end
end
