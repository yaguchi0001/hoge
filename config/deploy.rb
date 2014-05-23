require 'capistrano/ext/multistage'
set :application, "hoge"
set :user, "yaguchi"
set :password, "y013002"
set :ssh_options, :port => "20022"
set :scm, :git
set :repository,  "https://github.com/yaguchi0001/hoge.git"
set :branch, :master
set :copy_exclude, [".git", ".gitignore"]
set :deploy_via, :copy
set :git_user, "yaguchi0001"
set :git_pass, "g013002"

#after "deploy", "deploy:link_files"

namespace :deploy do
  before "deploy" do
    try_sudo "chown -R yaguchi:yaguchi #{deploy_to}"
  end
end
