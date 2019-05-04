module Response
  def js_response(object, status = :ok)
    render json: object, status: status
  end
end