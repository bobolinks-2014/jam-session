namespace :db do
  desc "drops, creates and migrates"
  task yolo: [:environment,'db:drop', 'db:create', 'db:migrate']
end
