class CustomGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  include Rails::Generators::ResourceHelpers

  def create_controller_file
    template('controller.rb', File.join('app', 'controllers', "#{controller_file_name}_controller.rb"))
  end
end
