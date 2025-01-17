class SignupsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :signup_invalid

    # def index
    #     render json: Signup.all, status: :ok
    # end

    def create
        signup = Signup.create!(signup_params)
        render json: signup.activity, status: :created
    end

    private
    def signup_params
        params.permit(:time, :activity_id, :camper_id)
    end

    def signup_invalid
        render json: {"errors": ["validation errors"]}, status: 422
    end
end
