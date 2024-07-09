class AdminUser < ApplicationRecord

 def self.ransackable_attributes(auth_object = nil)
    ["id", "email", "created_at", "updated_at"]
    # 如果需要更多属性进行搜索，请根据你的需求添加到数组中
  end

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
