class Project
attr_reader :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(investor)
        new_investor = ProjectBacker.new(self, investor)
    end

    def backers
     my_backers = []
        ProjectBacker.all.map do |investments|
            if investments.project == self
                my_backers << investments.backer
            end
        end
        my_backers
    end
end