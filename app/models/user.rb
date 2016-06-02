class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates_uniqueness_of :email, :within => 7..255

#  has_many :evaluations, class_name: "RSEvaluation", as: :source

# def voted_for?(post)
#  	evaluations.where(target_type: post.class, target_id: post.id).present?
# end

end
