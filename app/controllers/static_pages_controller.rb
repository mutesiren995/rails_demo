class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def search
    respond_to do |format|
      format.json {
        # render json:User.all.map{|x| x.name}
        # render json: User.where("name like ?","%#{params[:q]}%").map{|x| x.name}
        render json: User.where("name like ?","%#{params[:q]}%").map{|x| {name: x.name,id: x.id}}
      }
    end
  end

  def games
  end

end
