class EventsController <  ApplicationController
  def create
    event = Event.new(name: params[:name], phone: params[:phone])
    if event.save
      respond_to do |format|
        format.json {
          render json: {success: true, msg: "恭喜注册成功"}
        }
      end
    end
  end
end
