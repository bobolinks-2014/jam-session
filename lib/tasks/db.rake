namespace :db do
  desc "TODO"
  task yolo: [:environment,'db:drop', 'db:create', 'db:migrate', 'db:seed']
end
