class AddTaskTagsToTags < ActiveRecord::Migration[6.0]
  def change
    add_reference :tags, :task_tag
  end
end
