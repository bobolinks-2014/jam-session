class Comment < ActiveRecord::Base
belongs_to :commenter, class_name: "User"
belongs_to :receiver, class_name: "User"
end
