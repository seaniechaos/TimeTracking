class Project < ActiveRecord::Base
  def self.iron_find (id)
    where(id: id).first
  end

  def self.clean_old
    from = Time.now.midnight - 1.week
    where("created_at > ?", from).destroy_all
  end

end
