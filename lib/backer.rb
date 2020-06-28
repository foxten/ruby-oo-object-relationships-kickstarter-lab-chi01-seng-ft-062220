class Backer
attr_reader :name

    def initialize(name)
        @name=name
    end

    def back_project(project_title)
        new_investment = ProjectBacker.new(project_title, self)
    end

    def backed_projects
        my_projects = []
        ProjectBacker.all.map do |investments|
            if investments.backer == self
                my_projects << investments.project
            end
        end
        my_projects
    end
end