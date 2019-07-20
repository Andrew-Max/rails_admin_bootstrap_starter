User.create! :email => 'super@mail.com', :role => "superadmin", :password => 'password', :password_confirmation => 'password'
User.create! :email => 'admin@mail.com', :role => "admin", :password => 'password', :password_confirmation => 'password'
User.create! :email => 'user@mail.com', :role => "", :password => 'password', :password_confirmation => 'password'
