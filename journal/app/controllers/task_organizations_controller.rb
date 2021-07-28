class TaskOrganizationsController < ApplicationController
    def new
        @task_organization = TaskOrganization.new
    end

end