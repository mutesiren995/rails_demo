class EventsController <  ApplicationController
  def create
    event = Event.new(name: params[:name], phone: params[:phone])
    ok = event.save
    if ok
      a = "恭喜注册活动成功。"
    else
      a = "抱歉，注册失败。"
    end
    respond_to do |format|
      format.json {
        render json: {msg: a, success: ok, data: [ {"name": "Afghanistan", "code": "AF"}, {"name": "Albania", "code": "AL"}] }
      }
    end
  end
end
