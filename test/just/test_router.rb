require 'test_helper'
require 'sample_app'

class RouterTest < Test::Unit::TestCase
  def test_basic_get
    assert_equal 'hello!', SampleApp::App.get('/')
  end

  def test_get_with_url_params
    assert_equal 'hello Paul', SampleApp::App.get('/posts/Paul')
  end

  def test_post
    assert_equal 'Creating Paul', SampleApp::App.post('/posts', {:post => {:title => 'Paul'}})
  end

  def test_put
    assert_equal 'Updating 1 with Title Paul', SampleApp::App.put('/posts/1', {:post => {:title => 'Paul'}})
  end
end