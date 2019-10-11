class Backer
  attr_reader :backed_projects, :name, :project
  
  def initialize(name)
   @name = name
   @backed_projects = []
  end
  
  def back_project(project, backer)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
end