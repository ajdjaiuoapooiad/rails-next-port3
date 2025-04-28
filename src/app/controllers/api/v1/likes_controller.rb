module Api
  module V1
    class LikesController < ApplicationController
      def create
        @like = Like.new(like_params)
        if @like.save
          render json: @like, status: :created
        else
          render json: @like.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @like = Like.find_by(like_params)
        if @like
          @like.destroy
          render json: { message: 'Like deleted successfully' }
        else
          render json: { error: 'Like not found' }, status: :not_found
        end
      end

      private

      def like_params
        params.require(:like).permit(:user_id, :post_id)
      end
    end

  end
end