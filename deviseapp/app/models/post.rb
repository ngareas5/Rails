class Post < ApplicationRecord
   #before_destroy :destroy1
   # #before_save  :beforesave
   # around_save :save1 
   # after_save :aftersave
   # after_commit :commit
   # before_validation :validation
   
   #  def  validation
   	# binding.pry
    # puts "before validation"    
    # end

    # def save1
    # binding.pry
    # puts "around save 1"
    # #yield
    # #puts "around save 2"
    # end
   
    # def beforesave
    # binding.pry
    # puts "before save"
    # end

    # def aftersave
    # binding.pry
    # puts "after save"
    # end
  
    # def commit1
    # binding.pry
    # puts "commit run"
    # end
 has_many :comments	
 belongs_to :user, :optional => true
 has_one_attached :image

   validates :title, length: { maximum: 8,
    too_long: "%{count} characters is the maximum allowed" }

    validates :title, length: { minimum: 2,
    too_long: "%{count} characters is the minimum allowed" } 

    validates :content, length: { minimum: 2,
    too_long: "%{count} characters is the minimum allowed" } 

     validates :title, length: { maximum: 50,
    too_long: "%{count} characters is the maximum allowed" }
    
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

     validates :title, uniqueness: { case_sensitive: false }

 
end 




