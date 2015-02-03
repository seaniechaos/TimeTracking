class Project < ActiveRecord::Base
  has_many :entries
  
  def self.iron_find (id)
    where(id: id).first
  end

  def self.clean_old
    from = Time.now.midnight - 1.week
    where("created_at > ?", from).destroy_all
  end

  def self.last_created_projects(n)
    where("created_at < ?", Time.now).limit(n)
  end

  def total_number_of_hours_for_month(month, year)
    first_of_month = Date.new(year, month, 1)
    last_of_month = Date.new(year, month, -1)
    month_entries = self.entries.where(created_at: first_of_month..last_of_month)
    sum_hours = 0
    sum_minutes = 0
    month_entries.each do |entry|
      sum_hours += entry.hours
      sum_minutes += entry.minutes
    end
    sum_hours += sum_minutes/60
  end
end
