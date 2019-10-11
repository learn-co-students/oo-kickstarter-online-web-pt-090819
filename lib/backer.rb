class Backer
  attr_reader :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end

  def name
    @name
  end
end
