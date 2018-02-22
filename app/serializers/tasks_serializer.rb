class TasksSerializer < ActiveModel::Serializer
	attributes :id, :title, :priority, :due_date, :active
end