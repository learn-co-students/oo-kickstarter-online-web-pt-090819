class Project
  
  attr_accessor :title
  attr_reader :backers
#  @@backers = []
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
end






#class Project
#  attr_accessor :title, :backers

#  def initialize(title)
#    @title = title
#    @backers = []
#  end
  
#  def add_backer(backer)
#    @backers << backer
#    backer.backed_projects << self
##  end
#end