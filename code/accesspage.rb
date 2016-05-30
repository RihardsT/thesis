directory '/srv' do
  user 'vagrant'
  group 'vagrant'
  mode '0755'
end

git '/srv/access_page' do
  repository 'https://github.com/RihardsT/access_page.git'
  user 'vagrant'
  group 'vagrant'
end

application '/srv/access_page' do
  bundle_install do
    deployment false
    user 'vagrant'
  end
  rails do
    database 'sqlite3:///db.sqlite3'
    secret_token 'd78fe08df56c9'
    precompile_assets false
    migrate true
  end
  unicorn do
    port 80
  end
end
