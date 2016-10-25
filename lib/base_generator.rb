class BaseGenerator < Rails::Generators::Base
  argument :plugin_name, type: :string

  protected

  def inject_into_application_stylesheet(plugin)
    stylesheet_extension = options[:stylesheet_engine] || 'css'
    app_stylesheet_filename = "app/assets/stylesheets/application.#{stylesheet_extension}"
    if %i(sass scss).include?(stylesheet_extension)
      inject_into_file app_stylesheet_filename, "\n@import #{plugin};", after: ' */'
    elsif stylesheet_extension == 'css'
      inject_into_file app_stylesheet_filename, " *= require #{plugin}\n", after: ' */'
    end
  end

  def inject_into_application_javascript(plugin, before: '//= require app')
    inject_into_file 'app/assets/javascripts/application.js', "//= require #{plugin}\n", before: before
  end
end
