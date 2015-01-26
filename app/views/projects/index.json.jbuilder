json.array!(@projects) do |project|
  json.extract! project, :id, :ipr_num, :ref_num, :project_name, :submit_date, :last_update_date, :step_id
  json.url project_url(project, format: :json)
end
