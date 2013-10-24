module StatesHelper

  def get_state_options
    state_list = ["AL", "AK"]
    state_list.map {|state| "<option>#{state}</option>".html_safe}.join(" ")
  end

end