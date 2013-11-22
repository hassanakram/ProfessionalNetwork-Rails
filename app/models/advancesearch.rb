class Advancesearch < ActiveRecord::Base
  attr_accessible :company, :country, :email, :fname, :keywords, :lname, :school, :title
  def users
    @users ||= find_users
  end
  
  private
    
    def find_users
        users = User.order(:userFname)
        users = users.where("email LIKE? OR \"userFname\" LIKE? OR \"userLname\" LIKE? OR country LIKE? OR Industry LIKE? OR JobTitle LIKE? OR Company LIKE? OR University LIKE? ", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%") if keywords.present?
        users = users.where("email = ?", "#{email}") if email.present?
        users = users.where("userFname = ?", "#{fname}") if fname.present?
        users = users.where("userLname = ?", "#{lname}") if lname.present?
        users = users.where("country = ?", "#{country}") if country.present?
        users = users.where("JobTitle = ?", "#{title}") if title.present?
        users = users.where("Company = ?", "#{company}") if company.present?
        users = users.where("University= ?", "#{school}") if school.present?
        users
      end
end
