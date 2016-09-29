lock '3.6.1'

set :application, 'my_app_name'
set :repo_url, 'git@example.com:me/my_repo.git'

# set :deploy_to, '/var/www/my_app_name'

set :puma_init_active_record, true

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache',
                                               'tmp/sockets', 'public/system',
                                               'vendor/bundle', 'public/assets')
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  after :publishing, :restart do
    on roles :app do
      invoke 'puma:restart'
    end
  end

  # after :publishing, :restart_sidekiq do
  #   on roles :app do
  #     sudo 'service sidekiq restart'
  #   end
  # end
end
