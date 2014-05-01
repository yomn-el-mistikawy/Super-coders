class StartupsProjects < ActiveRecord::Base
    has_and_belongs_to_many :projects
    has_and_belongs_to_many :startups

    def self.check_ownership(project, startup)
    StartupsProjects.where(:startup_id => startup.id, :project_id => project.id)
  end	
end
