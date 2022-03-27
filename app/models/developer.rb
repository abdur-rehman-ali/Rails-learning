class Developer < ApplicationRecord
    has_many :developer_projects
    has_many :projects , through: :developer_projects
end
