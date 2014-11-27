module WorkoutsHelper
  def workout_form_start_date
    if Date.today - 2.days < Settings.start_date
      Settings.start_date
    else
      Date.today - 2.days
    end
  end
end
