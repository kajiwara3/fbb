# coding: utf-8
# RVM
#### rvmのパス
set :rvm_path, '~/.rvm'
set :rvm_bin_path, "#{rvm_path}/bin"
set :rvm_lib_path, "#{rvm_path}/lib"

#SSHユーザーの設定
set :user, 'ic-mente'

# デプロイ先のディレクトリ設定
set :deploy_to, "/home/#{user}"
# デプロイ環境名
set :rails_env, "production"
# server "202.53.209.40", :app, :web, :db, primary: true
[:web, :app].each do |type|
  role type, '202.53.209.40'
end

role :db, '202.53.209.40', :primary => true

# Bundle
set :bundle_flags, ""
ssh_options[:keys] = %w(~/.ssh/fbb/staging_fbb_id_rsa)

namespace :deploy do
end
