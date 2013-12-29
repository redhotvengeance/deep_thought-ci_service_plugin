require File.expand_path '../test_helper.rb', __FILE__

class DeepThoughtCIServicePluginTest < MiniTest::Unit::TestCase
  def setup
    DatabaseCleaner.start

    @ci_service_plugin = DeepThought::CIService::CIServicePlugin.new
  end

  def teardown
    DatabaseCleaner.clean
  end

  def test_janky_setup_success
    @ci_service_plugin.setup?({"CI_SERVICE_ENDPOINT" => "endpoint", "CI_SERVICE_USERNAME" => "username", "CI_SERVICE_PASSWORD" => "password"})

    assert @ci_service_plugin.endpoint == 'endpoint'
    assert @ci_service_plugin.username == 'username'
    assert @ci_service_plugin.password == 'password'
  end

  def test_ci_service_plugin_is_branch_green_success
    # successful test with CI service (I suggest stubbing the payload and mocking the API call)

    assert @ci_service_plugin.is_branch_green?('app', 'branch', 'hash')
  end

  def test_ci_service_plugin_is_branch_green_failed
    # failed test with CI service (I suggest stubbing the payload and mocking the API call)

    assert !@ci_service_plugin.is_branch_green?('app', 'branch', 'hash')
  end

  def test_ci_service_plugin_is_branch_green_missing
    # failed test with CI service (I suggest stubbing the payload and mocking the API call)

    assert !@ci_service_plugin.is_branch_green?('app', 'branch', 'hash')
  end
end
