require 'test_helper'
require 'rails/generators/test_case'
require Rails.root.join('lib', 'generators', 'custom', 'custom_generator')

class CustomGeneratorTest < Rails::Generators::TestCase
  destination Rails.root.join('tmp')
  setup :prepare_destination
  tests CustomGenerator
  arguments %w(Task name:string)

  def test_should_create_controler_file_with_contents
    run_generator
    assert_file 'app/controllers/tasks_controller.rb' do |content|
      assert_match /class TasksController < CrudController/, content
    end
  end
end