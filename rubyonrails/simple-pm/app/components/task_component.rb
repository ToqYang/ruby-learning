# frozen_string_literal: true

class TaskComponent < ViewComponent::Base
  extend Forwardable

  delegate [:id, :status, :task_id, :project, :name, :description, :persisted?] => :@task
  attr_reader :task

  def initialize(task:)
    @task = task
  end

  def render?
    persisted?
  end
  
  def task_id
    id
  end

  def status_options
    Task::STATUS_OPTIONS
  end
end
