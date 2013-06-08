class Zukan::SetupGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc "Create a setup file for Zukan"

  def copy_setup_files
    inject_into_file "app/assets/javascripts/application.js", :after => /\/\/= require jquery_ujs$\n/ do
      "//= require zukan/application\n"
    end
    inject_into_file "app/assets/stylesheets/application.css", :after => / *= require_self$\n/ do
      " *= require zukan/application\n"
    end
    generate("sunspot_rails:install")
    remove_file "public/index.html"
    remove_file "app/views/layouts/application.html.erb"
  end
end
