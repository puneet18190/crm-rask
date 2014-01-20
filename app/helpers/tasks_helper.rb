module TasksHelper
  def task_priority_class(priority)
    case priority
      when "L"
        "label label-purple arrowed-in-right arrowed center"
      when "M"
        "label label-yellow arrowed-in-right arrowed center"
      when "H"
        "label label-pink arrowed-in-right arrowed center"
    end
  end
end
