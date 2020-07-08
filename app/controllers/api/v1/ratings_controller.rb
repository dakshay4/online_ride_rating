class Api::V1::RatingsController < BaseController

	def submit
		params = submit_params
		Rating.where(ride_id: params[:ride_id].
			first_or_create({
			giver_id: params[:user_id],
			receiver_id: params[:receiver_id],
			ride_id: params[:ride_id],
			value: params[:rating],
			comments: params[:comments]
		})
	end

	def aggregated_ratings
		user_id = fetch_params[:user_id]
		Rating.where(receiver_id: user_id).select("avg('value')")
	end


	private
	def submit_params
		params.permit(:user_id, :rating, :receiver_id, :ride_id, :comments)
	end

	def fetch_params
		 params.permit(:user_id)
	end
end
