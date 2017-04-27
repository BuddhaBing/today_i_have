module UpdatesHelper

  def sort_by_date(updates)
    updates.sort_by(&:created_at)
    dates = updates.map { |update| update.created_at.to_date }.uniq
    sorted = []
    dates.each { |date| sorted << updates.select { |update| update.created_at.to_date == date } }
    sorted
  end

  def pretty_date(date)
    date.first.created_at.to_date.strftime("%a %d %B %Y")
  end

end
