module ApplicationHelper

  def error_message_for(object)
    render 'errors_messages',
    object: object
  end
end
