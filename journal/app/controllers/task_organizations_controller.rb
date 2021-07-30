class TaskOrganizationsController < ApplicationController
    def new
        @task_organization = TaskOrganization.new
    end

    def create
        @task_organization = TaskOrganization.create(task_organization_params)
    end

    def edit
    end

    def show
    end


    private

    def task_organization_params
        params.require(:task_organization).permit(:title, :body)
    end
    

end